cask "firefox@nightly" do
  version "150.0a1,2026-03-05-09-33-21"

  language "ca" do
    sha256 "311b1653196a3ade604872094bb41fd4fa955f334a472c59283897d2c0b89b21"
    "ca"
  end
  language "cs" do
    sha256 "0fdd5ef732f1000695ec99e79342e366967324bc63392d6f73cb82cac4c6b5f8"
    "cs"
  end
  language "de" do
    sha256 "b841f1811cc8340a715f474a33ba28b8d99443a4bf9a64e42b4b0d1ee9d35bd2"
    "de"
  end
  language "en-CA" do
    sha256 "c360fd0ac62a26b121b5fb3e6dc80255901edb39d8d55bd70ad0b70e6c6e2a36"
    "en-CA"
  end
  language "en-GB" do
    sha256 "045cf8192ddd0622253422a8368090ae8bf776a986633f308ecb4ff2d7b1c9c1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d432ea658fe530069ca40e65bea21837ffb2b2ee504e7c101f58707451c3f235"
    "en-US"
  end
  language "es" do
    sha256 "9ac4740bcc7b3b734179c2e60700ae7d22a6f86b8fd302d9cc199cd6462387a8"
    "es-ES"
  end
  language "fr" do
    sha256 "7807ea04c054236a4d53dd3d06cb5d3d31e9fc5f3309e4f98cdb016d1e22ebe2"
    "fr"
  end
  language "it" do
    sha256 "6de5e9a3e7bef3056490181c893fdcd2bdc6d32a265495492c833cf5b1f27e3c"
    "it"
  end
  language "ja" do
    sha256 "8625df27f58ac2a852ddf33912c27e29f92c8f13da5093a73feebafdbed02b44"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c4ee4264b94c37daac66dfd976ca46faf33cdbf6c5ee619c9514f7fa37e6e08a"
    "ko"
  end
  language "nl" do
    sha256 "d267fa87fb50f51cc17c4f9c89f50f8ab94c1c445fd332910ca03b917879713b"
    "nl"
  end
  language "pt-BR" do
    sha256 "00c9a1cca6f8b7f92deedcc9e03218913f3a25ffb7a031fb0f14f444ca0b188f"
    "pt-BR"
  end
  language "ru" do
    sha256 "b8a63b908a3ecfadb6f071e2e8e092963c8fa8d73e0d3ba68f7f7fb5b92c2db8"
    "ru"
  end
  language "uk" do
    sha256 "da16dbf1ef4015faa32d787a44ee9f874c2c44adeda60a00a7e7408d9b1637f1"
    "uk"
  end
  language "zh-TW" do
    sha256 "84a6f2fb77297ed56cc11ee78c91cc28312a68fa47bebcd35de44b011b5c99af"
    "zh-TW"
  end
  language "zh" do
    sha256 "7edb64fe1578990c375e2b6dfd4f2a79f4b0c9b94bb7fb3d2dd6187cb5a5f317"
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
