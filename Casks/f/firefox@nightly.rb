cask "firefox@nightly" do
  version "151.0a1,2026-04-03-09-23-23"

  language "ca" do
    sha256 "23e965fe2ac1448d3de965116714048a3199a0aed22b5cb444d6872559f2998f"
    "ca"
  end
  language "cs" do
    sha256 "467771bd6e5dabb5df4f366df1387636d5bdadd1bb72d182f0fc73335666bd26"
    "cs"
  end
  language "de" do
    sha256 "7287e0fcdc454c970361e1b5a3b0e652c08b356e92026c68bc696293bfdbcaab"
    "de"
  end
  language "en-CA" do
    sha256 "02b0bc7c870a9efbb9689f4eba6f45a137c6d50aafa0ca479c85163ee0085f49"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b7e6f53be94d49a13887efbdd18b01f2f2b6ab2519e1787faeb20faf24a820d5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fbb72191c903b61bd4c5a78355a1b0b2a1d94d9eefbbf1c2bbb7277465409e97"
    "en-US"
  end
  language "es" do
    sha256 "e0246ec42cc5f4d1fec8ae068bbe8c3cf23cbb9b2fca70f17134cb41ff05dfb2"
    "es-ES"
  end
  language "fr" do
    sha256 "b761b03938200948f454fd7e32d71c59b78a43bb6701a80883eaebd8eca0f725"
    "fr"
  end
  language "it" do
    sha256 "ed492bbd8051fd6cd70236d19f952f6af5c6a1f4f1d80e3d14c93e87b26e7935"
    "it"
  end
  language "ja" do
    sha256 "f8116d33d2efaca7cc853840b27df3ab834d97f1afcae98484671624e2e3b173"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4231126dc10f9a65bd2219149f825874dec823fed5556edb0e6c34c6be797941"
    "ko"
  end
  language "nl" do
    sha256 "3f87964e3b4977307fbffc9a6eece2cc31919f8512fb1a78f9f1fe9392a131a0"
    "nl"
  end
  language "pt-BR" do
    sha256 "8b13fa094b6abdd23c77dec9add4373632b5a5e11c639047254f93c9e87051ef"
    "pt-BR"
  end
  language "ru" do
    sha256 "f76b973f2783f84b8f6cde0447c5b6a4205e8df0a80a6669ef592f42d557794f"
    "ru"
  end
  language "uk" do
    sha256 "9fda99506a23fc0d209df12b58d714fa38f7684f75991b6f77b34ccb4c199b6e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4d3518ae37d8c07cc4bef4ddd52d2542174cf7099cc8539b8907124bb9cfbcd1"
    "zh-TW"
  end
  language "zh" do
    sha256 "d6536aabc3c6904428cf15401c47cab26ec1063ecd009c0fe870b4e692d3e6b7"
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
