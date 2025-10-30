cask "firefox@nightly" do
  version "146.0a1,2025-10-29-21-49-04"

  language "ca" do
    sha256 "e610b7b4c53aae551f7ffa095ee6aeb1792a265f2814012c4fa7a98a936d14c6"
    "ca"
  end
  language "cs" do
    sha256 "997f96e85845695d2202944534cca564cc68eb2667148a6fe948b6dbdda291d8"
    "cs"
  end
  language "de" do
    sha256 "8887a89b06c592b3d06abf77d10cb70ed9b70945a16561689ba3762f95df8bd9"
    "de"
  end
  language "en-CA" do
    sha256 "87826e1252572acef3fc084be221d78ded3eefd180c7a470a2065e8a0166c4d0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "63c920b8998ff84b95d040fe6d7beb27696bf9d1f095b49c059c4d12e96b82c9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb6f5f7a70ba31cc5eae366b01a1b2bd4116f0f22dba8d0d459954be8a81e1ba"
    "en-US"
  end
  language "es" do
    sha256 "53d59ae6da62db175a20b33c5f1a8933e89bbfc3a7193698885e1156b4eebabe"
    "es-ES"
  end
  language "fr" do
    sha256 "7f840206f7cac001b650c1ef3fc24ac192c6303d42b4a6f0e87d4424af3f7037"
    "fr"
  end
  language "it" do
    sha256 "f90a815b8bda58f3defccae7ff0c749fc22343bdb3547f4149f427746d8da151"
    "it"
  end
  language "ja" do
    sha256 "5fe86c23272a76c99547dc65bd280005ac206c5bb210a7157c06ef40c561a45b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4997f294daaee372180b92b951ad40a582ae4d6f394b79224f5a2ed762ef28aa"
    "ko"
  end
  language "nl" do
    sha256 "9d82982ca80bca0a10c58a1c380fc968cf057273692e7e8a62d93b9c21567226"
    "nl"
  end
  language "pt-BR" do
    sha256 "9324330c121d6ce3f22e774193c15ae60c316228c0b8e479e638656280c9d04f"
    "pt-BR"
  end
  language "ru" do
    sha256 "e87edf1677b24bb7769068249482f4003640077f086bad6a93aafe48d8b847cb"
    "ru"
  end
  language "uk" do
    sha256 "850f8dd9060ffc1e63febc18f2c1f3a9c5a3b43c9e4f87437ffd4af282822082"
    "uk"
  end
  language "zh-TW" do
    sha256 "a1909ea62420257d2dcf315ac58e78112a23636b7582f26ec81292af0f5945f2"
    "zh-TW"
  end
  language "zh" do
    sha256 "605e31fc02cfe50474f69166b87c336c05476b7ef9e01b63f5c403e8e3a0c374"
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
