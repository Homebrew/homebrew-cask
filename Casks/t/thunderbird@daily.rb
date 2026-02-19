cask "thunderbird@daily" do
  version "149.0a1,2026-02-19-10-01-27"

  language "cs" do
    sha256 "a2b42801f10b4e13abc3d39920581c39b4c330f643348cd0c926768e748f9b45"
    "cs"
  end
  language "de" do
    sha256 "aa67a2efd69c3fd658725b0cb38cd911d937fa4929c2db1478caa82605c6ca11"
    "de"
  end
  language "en-GB" do
    sha256 "e8bc226a141980120e3ef8f10cfbce4770ea4fb5797b394cd04c46ad6d08f252"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cc7242e3fc1d6e5874533bdfad6ff53b567693ee6d37269d7f333a9953f232d5"
    "en-US"
  end
  language "fr" do
    sha256 "9b9e206edf74f36841701244f9c8cb1383e64bf920c76ce6796c54e72fb2a428"
    "fr"
  end
  language "gl" do
    sha256 "d996b9ee7fe229cf890fd6c0bf2c132f8585f8297d94e6770b7067dd9d7639bc"
    "gl"
  end
  language "it" do
    sha256 "d3eb0a6ed3aa868c86031b83e0b688adf67b7eb605f46dac25f4ddf02940fe1a"
    "it"
  end
  language "ja" do
    sha256 "6bc284526cfbe8da98247a81e5c04f530275c94389c0553aeaa9d501e529c296"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ddf68371cea52536aaf80d0b2a884ef5eabd30fc53f56736cf17af20b0946599"
    "nl"
  end
  language "pl" do
    sha256 "ccceb8720034eb30df3e7374abf01aa2bf74b846f21f2362dcf11fd008711b66"
    "pl"
  end
  language "pt" do
    sha256 "bd91bfd8e1a181ceaa689271be11365abb3702ad951e44d2e607e77c980faf13"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3cb73ff71123d3fe8fd821e7c3126d713da4162775f3ff758715a603d9a47951"
    "pt-BR"
  end
  language "ru" do
    sha256 "14452a9701a1a2bc2516f944b0619a4250bd5ddec0e67b3891a9b72ce8d405c4"
    "ru"
  end
  language "uk" do
    sha256 "cd63b351b5e2a357c23c826f5f4ace562dd18aea07b78299c51f5602e133f79f"
    "uk"
  end
  language "zh-TW" do
    sha256 "984f708169f2b3bd580270ad37fbdb1e246b4bd0d40ed0afb547ab425232a5b8"
    "zh-TW"
  end
  language "zh" do
    sha256 "87d19a7c29f513e640fe20c686e3a0b986290ef944da83864e31ae475baa13bf"
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
