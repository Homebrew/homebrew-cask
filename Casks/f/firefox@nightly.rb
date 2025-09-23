cask "firefox@nightly" do
  version "145.0a1,2025-09-22-21-10-53"

  language "ca" do
    sha256 "05c55fefd5341856b2327c7d16c7a204f0064db36a5e50b989df6653ebf5abca"
    "ca"
  end
  language "cs" do
    sha256 "371728f283a22535a21d57fc9f61689492cdff65404d394f3dc6487430155b6d"
    "cs"
  end
  language "de" do
    sha256 "0e55556d52b1c3422ec7750eadda27cabd7155fdd1fd8c4e93a9572bbe9451bb"
    "de"
  end
  language "en-CA" do
    sha256 "37f6a40675803e7394336aa21feccac8e85dee5a290c2d6363f45224e4746291"
    "en-CA"
  end
  language "en-GB" do
    sha256 "84a503b0ad1101e40dd0e4d155dffb5aef70bc4923f7e216e746aacccd404e5f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "784552c6b440708af954ea1df4a9340598dc2cb276b0ee3f602f93cb9af179d2"
    "en-US"
  end
  language "es" do
    sha256 "3b12cb9ee252d1248cf2c2bf482024cf83388d20123b40b4906dae03c179d9c4"
    "es-ES"
  end
  language "fr" do
    sha256 "5f1ee20c67e2cbc9285e33e6f1dc0951a500252fdde91e8720bafd4b47f41b6d"
    "fr"
  end
  language "it" do
    sha256 "48b1b41b77edc06bcb16b05bf675c48fa4b34860f7e31a4521aa44e98e1180ed"
    "it"
  end
  language "ja" do
    sha256 "cca13896b564b49380674a5d231f372e684762dd07b600e490584396b6d1df05"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8c8819c67352afaba28d35b453fd748ce0243d517ea0e57f39c64e4918e7abc6"
    "ko"
  end
  language "nl" do
    sha256 "77eb5f82e1e58b0f2d01677acfce0c054909eac203322a7f359283fcc42ffec4"
    "nl"
  end
  language "pt-BR" do
    sha256 "c57853a6b55f5b2112c68ebd47626b4d968a2e0923374c0df0ec73e42ee6bdad"
    "pt-BR"
  end
  language "ru" do
    sha256 "90eb0ebeeb96cace23e7081ffd18a199b30256f8a84bc368221da2e83bca8e64"
    "ru"
  end
  language "uk" do
    sha256 "a6e6456dbb84cb2c295aa3886c79fb505502e7cd52fd1101939e4ec1de79629e"
    "uk"
  end
  language "zh-TW" do
    sha256 "249ff1ca3bf0a796a380801de9cf67af4c26cbd14d3c72c1dce432635c8f6577"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ad5ccb32a6b36d4010d1deeb3db9e0e77675423e878f6821e5cc7c6ba1c4124"
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
