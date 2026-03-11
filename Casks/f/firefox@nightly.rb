cask "firefox@nightly" do
  version "150.0a1,2026-03-11-05-06-22"

  language "ca" do
    sha256 "c917b46014cff53e5a21a65f6f64dbcc022a3cdd506952a9f4f2456565e6070a"
    "ca"
  end
  language "cs" do
    sha256 "e025537a8bb95097704b3b358302aa6ac21a9e87e711acc52517b016c35ebcde"
    "cs"
  end
  language "de" do
    sha256 "6a0be01bdfccb893f1430226f5038c4360bd09fb0354a1c8dbb7a9a6a02f267e"
    "de"
  end
  language "en-CA" do
    sha256 "9345b7375331d5854dbf304f480a11de17d6a97fb2c05a4f74e69989ee39841b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "865c3b01347737d522e4ff29bb16327be853af132cfbeac042e2d01dba3dc970"
    "en-GB"
  end
  language "en", default: true do
    sha256 "61c0a4d407c51629a715744b33c47098e7e43b422e926b7b54f1785f3a98a719"
    "en-US"
  end
  language "es" do
    sha256 "ee3ab8ea2a9e8af66798094c0aa12890c524838861cc2c08692b519caa85ab72"
    "es-ES"
  end
  language "fr" do
    sha256 "fc5184df42033767f163faf6d31d24829c9794b03ec1af5be21404ed6c5e8f3b"
    "fr"
  end
  language "it" do
    sha256 "eedc636ede916d214785b63cbea52ab4f0fc878f62be902d8bc4e8f977a96385"
    "it"
  end
  language "ja" do
    sha256 "44b2c610f8f6687feafc67f1bf2d1d8a9d1057c4e79863f8eb0dac1879ccc205"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fdce21caf2fe1e5e79d9d0c395f3ba3b2052dc5ada235cdde2e10052b6dbcbcd"
    "ko"
  end
  language "nl" do
    sha256 "8c800a969801c91d97402dce15f8a5e2ff8347f70a356773d6a0132ff6499736"
    "nl"
  end
  language "pt-BR" do
    sha256 "0454cd76ffe84b39fc019df315c35f6c1d9dcc9b8de91219c0082dc1346b2fb2"
    "pt-BR"
  end
  language "ru" do
    sha256 "f32576742f569a984986a4e23f2ba4feb677e06ed7a3d337257f13624d4e4f86"
    "ru"
  end
  language "uk" do
    sha256 "10b13d13d442aaafae3392798bece3e079ada604af6bc5741a514f2d794d30bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "70e3fee9989d6f8086d92df7c6e2cf77131a2b9dc0e4cea83ac2568926ebd803"
    "zh-TW"
  end
  language "zh" do
    sha256 "ac51cb1dabf3ce35fedf7d6a9fd0d8789a84ed8204475d85077211c66938368e"
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
