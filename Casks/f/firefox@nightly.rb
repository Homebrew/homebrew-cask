cask "firefox@nightly" do
  version "142.0a1,2025-07-18-09-29-30"

  language "ca" do
    sha256 "68697a1274234a244838f01f006564cfcd488208345790b08bcab15c6da343b1"
    "ca"
  end
  language "cs" do
    sha256 "4c3d020957b01fadbfebf7805198f25fad03a2936f30fd61c3f87eb4cf2b8fd1"
    "cs"
  end
  language "de" do
    sha256 "ccedadb25884077d5756e59d7d3433109fcb236082e02f05fe8f890cbf5cf0b7"
    "de"
  end
  language "en-CA" do
    sha256 "31943a07cee350c61a8e5c9755a98e74a71a800d9053f8a9582b5b87766683f0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "39f8f94d0d759fe7cfd31bc36008e757d18a22c299076c128f4b6553bf04570f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "575555db1b20fc41ae4767703c2c52c0a54014460945e60767e0f0d80e9530d1"
    "en-US"
  end
  language "es" do
    sha256 "0a8ef155f95d888c15b6da63e691615cf7607dbbf9c347023e78323e363dec55"
    "es-ES"
  end
  language "fr" do
    sha256 "be11cef46bac3a943dc0c0d1db904bf7f0ab6b64d497e0b11f5ba971bd9430b5"
    "fr"
  end
  language "it" do
    sha256 "faa6841463761b864ddb266675ff5a13a8188f4cb2d3216c3122f9bc104e4eeb"
    "it"
  end
  language "ja" do
    sha256 "4822419fc51b02c7306db12448b7a9e9592325ab1e562a46e4c3ac02f92db61d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b4a7c162d876054e3c60fa27b9a29ec2bbb5622326287256463ebdbd3db3a454"
    "ko"
  end
  language "nl" do
    sha256 "709432f143ff3a820102249632abf9d323ddfa45659131a3800aad3d720f6322"
    "nl"
  end
  language "pt-BR" do
    sha256 "f41ea7c5036022f5f31af692af43ff6c7b9ad558e3693e0af95fa5d2cf9ce47a"
    "pt-BR"
  end
  language "ru" do
    sha256 "8e84d9110905527e2cbbeb2d8b819e3adb484929a221af05d818b3ce609f1db3"
    "ru"
  end
  language "uk" do
    sha256 "3fb376e2bf08f6802997e03deb6bc7cca493e9eb60b4a8401ea13cd79939ddd8"
    "uk"
  end
  language "zh-TW" do
    sha256 "636770809d4f543c81576b05e810879030ccc5ffd2e722bb763fcc13c982b6b0"
    "zh-TW"
  end
  language "zh" do
    sha256 "93195cd3a1d51087a5455bde4c7a2363f4c1f1135956905f83314d3ef5e4a72d"
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
  depends_on macos: ">= :catalina"

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
