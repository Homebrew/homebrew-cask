cask "thunderbird@daily" do
  version "151.0a1,2026-04-05-09-55-56"

  language "cs" do
    sha256 "26dabe408aae8e92779661e4d6465febdc6a9a536c1ac96877af4ff947fe6092"
    "cs"
  end
  language "de" do
    sha256 "e335e4534a7707495df806127e83f891e6368396cfdda1e0a073233ddca95059"
    "de"
  end
  language "en-GB" do
    sha256 "05e9461e1b08ab864765d0d7882b714b1b4907e797b31fb23523a4795ccc5fa1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9b27f8715e4a2fe8b08dfc2be19572712d74b4daeef11afdce0dcc54dbdb4a10"
    "en-US"
  end
  language "fr" do
    sha256 "aef8bb93e2090c934ce0cbbe8b19b1f3a61111b13bbd4ce8219c2e10054d6079"
    "fr"
  end
  language "gl" do
    sha256 "15e6ff4c4668e73e8a675efa53332c6549fcf74d4cf9894c17a8c1f2c40cba27"
    "gl"
  end
  language "it" do
    sha256 "58af65a9782d60028107f9594498f1bf01a67806d25c89b1312ec1ff5c9de078"
    "it"
  end
  language "ja" do
    sha256 "fb4b67de2c52660bd77711f8fd62731661a2c0c7b496717049aa30aa086aec90"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3e5ccf54deee45cb761c6f322acccecdad77e3b21259c4d4d7bc4ceb4d5744fb"
    "nl"
  end
  language "pl" do
    sha256 "106576f70cf63a94d53827ab99c37b8a67bbc33ba390a51cbed208ce19bf11a6"
    "pl"
  end
  language "pt" do
    sha256 "37e8b2d6406e47925daa76ebe4f08702aa66e9d55b6258001d52c149503c333d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1c7abd1664d7a1cd21007b2d9e6bbe3ca523fc25a38c519c45546501e0c1d2cb"
    "pt-BR"
  end
  language "ru" do
    sha256 "4989fa30a362271325b13375ba130621e11dd123e48b5ccf358eac05e96a036a"
    "ru"
  end
  language "uk" do
    sha256 "22c2b791bba1a94cd957beaaffdc4d1ab0a8eb8f017ade5856f4293692a15129"
    "uk"
  end
  language "zh-TW" do
    sha256 "244497584732af72e1bd3b3a40538f8c40fe571402b042edc0b9ecedefebc64a"
    "zh-TW"
  end
  language "zh" do
    sha256 "446f21dad70114b5fad7be0eaa08dfe562ba24dba58c65a3b27a2f6e5fcdd041"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
