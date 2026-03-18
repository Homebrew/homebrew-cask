cask "firefox@nightly" do
  version "150.0a1,2026-03-18-09-29-01"

  language "ca" do
    sha256 "029557acc86944fe368e051f043167be083d54ff18fbd1571660c8156f0b0c5e"
    "ca"
  end
  language "cs" do
    sha256 "c5bdaaa93ce5668add7cd71801ffd10e5599da68173386fea29754d88db227c3"
    "cs"
  end
  language "de" do
    sha256 "52313f2001d4b9e7115f165bbfe9721b4fc21b411bc76be6f77d85541560763d"
    "de"
  end
  language "en-CA" do
    sha256 "7b676db41bdb22fca9a28ac979fcf285b0ed012ed1e7dff9af3ca1ac44408c3b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "00ff475eef06899bb9fd5c13cf5255abbd1d34c3ce34745f91f3a9c2687fc1b7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b652eb7759ca7f6da04adecd3b9b461e259626b0df03af326e6c1721de837acd"
    "en-US"
  end
  language "es" do
    sha256 "e1a7a451337cc4ac0d5c2a0748bc47434d8923f33a36f06c2d5176063603466e"
    "es-ES"
  end
  language "fr" do
    sha256 "b2bed8634f6f812eb3b408cf2d11d52ce49c80d61697c0e2b85481c1aa4413c4"
    "fr"
  end
  language "it" do
    sha256 "ebb02a889008c64eb38646b0cd7c94c4ad7ba4aeeaf9d6ef831feb8db31814d8"
    "it"
  end
  language "ja" do
    sha256 "f48f7c11e992f38fe2d118fd13f68a9b297809abe8204444c79576a7cb498285"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "93d2f3fc0be463fe3cd3479d3f5393dcc1c267e051fda40fa3bedb2666eaf7bf"
    "ko"
  end
  language "nl" do
    sha256 "0f10daf78437c2fcd7eff04abb85564e959454396e297b9d4551794ae2960ba2"
    "nl"
  end
  language "pt-BR" do
    sha256 "d3d26273140d79424eaf2086d156daf1849c7e735c4f14a3557fc88c7c9f21bb"
    "pt-BR"
  end
  language "ru" do
    sha256 "74c9a747a9fbbdb23670dbf63d09a853cf85016714ddd35ef34d0c4ca2be5220"
    "ru"
  end
  language "uk" do
    sha256 "902987dc4003e616be25ef3353144cd2c707a4eeccada899e456a1dede96ad6e"
    "uk"
  end
  language "zh-TW" do
    sha256 "08d6e3cbe9a421bef54d6c5d0500a9d4d5d591e27c1619fe6e855be4584e7fd6"
    "zh-TW"
  end
  language "zh" do
    sha256 "37d5847d01857d239ffdb318d8a447aacc7612f087aef70d67eadd7074e91fd2"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
