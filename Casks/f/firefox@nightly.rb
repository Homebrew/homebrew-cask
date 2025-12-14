cask "firefox@nightly" do
  version "148.0a1,2025-12-14-09-33-41"

  language "ca" do
    sha256 "a8f826be9750f2368c6eb6fa6323f58052c7020f4629346fb1ae3292d6649648"
    "ca"
  end
  language "cs" do
    sha256 "b1a06bcfc98f09d55b7b428e524b2903a6249dfc4e2f82daf1e18476c7dee3d6"
    "cs"
  end
  language "de" do
    sha256 "714627408c7ef75eca1d4fe1551993218a67455ed43a0c8db832026d6a9972bf"
    "de"
  end
  language "en-CA" do
    sha256 "ac86a7f6df52f1a288bc49af5785ea55a92c6e5edb536d247fbdfaf9a2e75be4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "89b65bb35a8019f756f0ab2e2d833663ebc00e948c9a969ada7cdd003710fc4b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "21fc47498c99309d88ef1a43b2ea4e1ce6406fa0ecde93d9b90d9edcf2e5ae73"
    "en-US"
  end
  language "es" do
    sha256 "8de245b6ac7b87e20cff45b3333e02be05b0c30ed4b74695f58dd4314a3e4229"
    "es-ES"
  end
  language "fr" do
    sha256 "a9a8ad976f7da76972f0b3f13045ba08d7914a7d82c6a97db36632e0709a341b"
    "fr"
  end
  language "it" do
    sha256 "2e4ee11df98e8450a2573b2a1d0e28ea7cc9c92999a129c9be26ac69b8a5e2e3"
    "it"
  end
  language "ja" do
    sha256 "6549a8d6ad42f6343212880c2b71791932b01ba097fc930f17bf7d2e9b558519"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d0359f81fa9247f1ed51b509a05d0d454f43056296732973f6b84d2e38a94bae"
    "ko"
  end
  language "nl" do
    sha256 "3802ecd4772642f8db019763202fcd8cc623b483f65446a062cc68f54d57f7a7"
    "nl"
  end
  language "pt-BR" do
    sha256 "01d0ed98c48a612ebb75b6b86527c006e957774dedfaa7798178ef6b703c9c30"
    "pt-BR"
  end
  language "ru" do
    sha256 "5dfbf73223aeead846761d19f89dc75c9ba19e41fd4fd218c3685b5e79a2a0bc"
    "ru"
  end
  language "uk" do
    sha256 "4fcb24b164e889b5668ace5bf1effedc96ce8a062da7199345e45334e200b833"
    "uk"
  end
  language "zh-TW" do
    sha256 "10ba250399053cc91bac18c33f4bf36c6d6a79461085aa9e9c3d26228147b981"
    "zh-TW"
  end
  language "zh" do
    sha256 "225eaf59e2372bc6a333bd92fecffd90f39750a9a11994ce3ca313622624b830"
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
