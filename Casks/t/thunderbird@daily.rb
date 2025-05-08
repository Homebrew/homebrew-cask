cask "thunderbird@daily" do
  version "140.0a1,2025-05-08-10-17-02"

  language "cs" do
    sha256 "913a20467917d9c7f0e9605618f2f84b260fd920d0dcfb172b92aaaa1d526518"
    "cs"
  end
  language "de" do
    sha256 "f5690a2a6547650be26023162b74db994f87213c03cdd82cbf443731a03bba56"
    "de"
  end
  language "en-GB" do
    sha256 "afe425496f2af2f4cda81287c04ff5578e14412047963d24ded0a3d64dde9c77"
    "en-GB"
  end
  language "en", default: true do
    sha256 "326fa87c16bd315d6a66124ff3f27c925564fc4281f83b50573a4809c17121e5"
    "en-US"
  end
  language "fr" do
    sha256 "5dcef5aea445fb1c907c8b0a3b72ba3ea91070ce7532427b54e860cd902cbfee"
    "fr"
  end
  language "gl" do
    sha256 "dd836a4d119404a628967ce4d95e8acf4aff7e15b0e500f6c80ec15c305d44db"
    "gl"
  end
  language "it" do
    sha256 "e10576b8ce612d35259b931ba83febb69fee0c0dbd7f1309383eac3abbc3c86f"
    "it"
  end
  language "ja" do
    sha256 "2cf50e7724feb19685a0f513e646fe053388f87d831788bc30f427d1b3e62128"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "88c43872be58595de1579954ffbb21ae1aa28b3cdd873a3d548607522012df84"
    "nl"
  end
  language "pl" do
    sha256 "631ae2f4d69555f63b9bc2e62b50666b6610fcba701747385c159b93662ac1ff"
    "pl"
  end
  language "pt" do
    sha256 "da8b6993ebc999d015c328e5b2b40fa3706477cc90a8568d7ec6ee6b358fb33a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c7b0ba7e6d47c35fa09a612ead1ce387f46732c3ead5d48859f10cbd60acb17e"
    "pt-BR"
  end
  language "ru" do
    sha256 "2ac6a789c66baf186cf71fe2b6a11055d4bb9177adebb16f7214b7c3abdb5c38"
    "ru"
  end
  language "uk" do
    sha256 "d4dcc6132fa189a5b90cf5c0cf32913aa881b920f80191c574bf3cbb5d17618f"
    "uk"
  end
  language "zh-TW" do
    sha256 "dd236b92ee6cb85078171dbb405b58fa29e92aa4b1a3a6438ccffe81df320bee"
    "zh-TW"
  end
  language "zh" do
    sha256 "a87823c21094c77f94b2d117706760bd29e6b638e427fd1c7ce1c5c76097b712"
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
  depends_on macos: ">= :catalina"

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
