cask "firefox@nightly" do
  version "147.0a1,2025-11-25-20-46-54"

  language "ca" do
    sha256 "837ead7e1950ca5e769abefd51224b70aae2ae7bfbb3272781005ba26263dbe2"
    "ca"
  end
  language "cs" do
    sha256 "74ab5ddedaab63bccd4c34febeb4dee9a7616ff9dc6bdfe120d38bd15b0f043d"
    "cs"
  end
  language "de" do
    sha256 "7cfd05bbfa37a72c0d57d4701239ba93ad3b98a38b6a984adc2be0d1db459ec6"
    "de"
  end
  language "en-CA" do
    sha256 "d2f36e20ea60b6111a27ca078dd6e8ccca1c75777b29b976aca7621ed0f39160"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4eecc44f9b37cf02617980d9e823a997d8372e1233e3760f01baf77ba5f7daa6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "467678d176e80a4bba9fc0600d3c16078ece4b0c2f932adaae06b9064baf9bca"
    "en-US"
  end
  language "es" do
    sha256 "46269717461d1a00fa57a8cd8124bafb780ad8b45e8b0a5ed00c1c7373668288"
    "es-ES"
  end
  language "fr" do
    sha256 "1c7c7b2ca94a897965a4e9b94459182d40a3ca898f817e1e4d07b42a624d507c"
    "fr"
  end
  language "it" do
    sha256 "97bb67b9091f1858dd0dc05cf39ce3cfb567b1fbd508010855f8dbec683b3388"
    "it"
  end
  language "ja" do
    sha256 "f031bdbf8706e18988f7e30539860fc7b7dcb2ec464405c0b576d19586d6aacb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "164d860225f74448afb0cf0e3fc03e629be9d55d14dd953f92ee9c3d5da83446"
    "ko"
  end
  language "nl" do
    sha256 "b148e219be99570e6910d91cf270ab2d6d82e2a73c30589f73a268b4fac3b5fa"
    "nl"
  end
  language "pt-BR" do
    sha256 "5cb529d1bcd9a609ac8131de6fd4bc9af5be47e3bd2a83fb35728ad96048b94a"
    "pt-BR"
  end
  language "ru" do
    sha256 "90fd41eef392a9829b3ee3914447da6bc774add1e6519d19dbdb02c95cc73406"
    "ru"
  end
  language "uk" do
    sha256 "4846cee2db58841728b9e502a91d8af93428d3e1921ba96141774483e66f0ad8"
    "uk"
  end
  language "zh-TW" do
    sha256 "75527c0e9fd60f9d9ff1522bdf17b7ca8113de30ecc669ec801212556dc803d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "10726a6b24de8c2f8cd20b5b6b027479b34d82f7b9db46e34278cdbf65176a39"
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
