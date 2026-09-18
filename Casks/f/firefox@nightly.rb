cask "firefox@nightly" do
  version "158.0a1,2026-09-17-20-34-53"

  language "ca" do
    sha256 "93fcb3093c2a185529849aa367db6877836311f0863a13bc34c391cd7b2b67c6"
    "ca"
  end
  language "cs" do
    sha256 "41b292a3b12f3bf51c5b0297ffc72903a44dbdd31b61fd9a62b577587ea77c04"
    "cs"
  end
  language "de" do
    sha256 "e8d497104e41a7c7ea7eefb08cb5cd1cecaf769cce0044207b29fdd03899dff8"
    "de"
  end
  language "en-CA" do
    sha256 "91cab90a3ad02e3e4c4c378f3da25237b0ef6db5657cd5f4c08fc29958c1eb55"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ffc67d6bfa3ce786b790f7330721b8e252de1ef1e42e8435ef6c1d62900189ff"
    "en-GB"
  end
  language "en", default: true do
    sha256 "147c6e2bb1e972dbe9b076533ca5e2c961191db84c0809740f0937e6c1c1e337"
    "en-US"
  end
  language "es" do
    sha256 "cc04e6ccfce4765e8fd282b382f6027c0ced354c9d3d8e4379688bc542d69d13"
    "es-ES"
  end
  language "fr" do
    sha256 "16f2479637288e5ffabc985a7c65e39dede18d6583d25c6b83398222e9085b7b"
    "fr"
  end
  language "it" do
    sha256 "83240b7f61e537bb41467af8fb2f964bcc04d8e327a6a193ab719d2c2cd22bad"
    "it"
  end
  language "ja" do
    sha256 "952bcfb127dff28367d2d08f87e92ea1df061f26d1c92006575f19498535df95"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e6cc64eb27e23a05dc372b655c0caf111f5f2b8d08b5a39a51331817dccc9451"
    "ko"
  end
  language "nl" do
    sha256 "53879f27298bec98f3aa1f76a034610e62e68ef2c39703760bd376097453d8c0"
    "nl"
  end
  language "pt-BR" do
    sha256 "4a65b0b64a70fc7221cd5d42bcb7c4c59be69e27465cb627e2c7a02afbfd326d"
    "pt-BR"
  end
  language "ru" do
    sha256 "75607cf38057d543d2073148e3fa55974e1c77dd1341b8fddf6fb18bb9d38699"
    "ru"
  end
  language "uk" do
    sha256 "5a2955c3e0274215549ba98724f3211eb9a82236bc1ac3d2cb10d8c4d033f1bc"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa2bfed0b933e35939f7bd0b82cb89707cdc34c162d01df042efe06297515fc9"
    "zh-TW"
  end
  language "zh" do
    sha256 "174819bd97395ad1455e91665a05e69c3461ca2c9418ab11f59e0c770e681150"
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
