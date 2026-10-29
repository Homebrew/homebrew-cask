cask "firefox@nightly" do
  version "161.0a1,2026-10-28-21-30-39"

  language "ca" do
    sha256 "27aaa81cdc4d524667b1b738017b00a23e4ce17960f061f9cda23cede29ec95c"
    "ca"
  end
  language "cs" do
    sha256 "459384bd1b1282319560225a02c4f68f3f4caa5b9e7ad1521cd5fee6b76141e7"
    "cs"
  end
  language "de" do
    sha256 "711e387f83b9bdc7b258f30bd828f886cc800a63be015d9009d96905bb16a109"
    "de"
  end
  language "en-CA" do
    sha256 "30328080908d9007684b4e96b5755ada670eb102610f2717290d2f536eca577b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5bc6b90523a230821373d146b92671866f8b25c5183d5a6973c95a0919ce80e7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9a46643496f1f5a683b34c7772be4dac69f0b4f70adc9ade36fcca5b2e591af8"
    "en-US"
  end
  language "es" do
    sha256 "3fa499d01bf835171ed94b696d2d50d867e26ba5102664fa31792b497166f57a"
    "es-ES"
  end
  language "fr" do
    sha256 "a7dff52b5ad9e9c45652d51c714c267267dd463a90999073b45bb3f762085365"
    "fr"
  end
  language "it" do
    sha256 "5e953bf9302f54eeb40161a98e0dcc02136eea5eb9e9074c1ffc3dbebc73e0e1"
    "it"
  end
  language "ja" do
    sha256 "163eb70697abf104371f731666afe4e20a0785a4d2d3ff5100105a7faec80e79"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fe7832cb9fea7f474b558af2bd112e67956d291e626b15f79ec01574ae68f0dc"
    "ko"
  end
  language "nl" do
    sha256 "63b537b1a93f5470656ef881aa44392c5a3ac8802c3a506011ddff0d077ac85a"
    "nl"
  end
  language "pt-BR" do
    sha256 "1743b67930378bf9f39d723a0f4caf0bd6ddb982031057d7d1df8275cc7cd49d"
    "pt-BR"
  end
  language "ru" do
    sha256 "193fcd5d301480fde2082d371b6636cf66c5a7e079c035d0e533ed08ce2e34fe"
    "ru"
  end
  language "uk" do
    sha256 "d8fdfee8a0141ba6bc4f6bf57d173be28dd22abd3b2ee2be5a36247f64a8acf0"
    "uk"
  end
  language "zh-TW" do
    sha256 "d77c22817be4188c7caf4827d58ee26bf467f2a7e01189444543f6ce825f3ebf"
    "zh-TW"
  end
  language "zh" do
    sha256 "9186ca04b35b1390a7930f542061573cc3f30af14f202ed524807691c6649262"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
