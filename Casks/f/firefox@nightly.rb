cask "firefox@nightly" do
  version "155.0a1,2026-07-25-20-50-14"

  language "ca" do
    sha256 "56a108cc782e600dff0f8cdc55b4bd8a9e6aa7980df2b0714959570ce1fedfe0"
    "ca"
  end
  language "cs" do
    sha256 "236c8cab07a42a62c5aae2aad6d7b42d27a335805fe01b921b4399225019a25a"
    "cs"
  end
  language "de" do
    sha256 "30881311b597db24d7d5b109e152bfc3f31935239fb046845eba17da52b5b149"
    "de"
  end
  language "en-CA" do
    sha256 "c9abf469e9eb7f658fdb3f89923dd39997500b92f778f7c44e74938740e3705a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "90e927b662941ce7defff635a3f24068b5be4b8c39210388b11cf482abe1d6cf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "993726505c475c8ee07b4dd85d021ee5646c1b134851fb3544631a88ac5bc30b"
    "en-US"
  end
  language "es" do
    sha256 "3ed778b26b04e6c272702ee41e62ef6131f764a8fe5e44d9bd0c3f401ca166eb"
    "es-ES"
  end
  language "fr" do
    sha256 "219a9834f24ab7f625265f1663504dcdc699fd2fb1346bee539739166c5515e1"
    "fr"
  end
  language "it" do
    sha256 "0f18bacca7367a04957ad97b0233fa9c72f4baa9df96e68daca02d171d542ced"
    "it"
  end
  language "ja" do
    sha256 "940510448d666af01002f2d47417489ff3ea0b47c015b037d6f43363cb47c17a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "33324c145e84cee2df7f0068899be842205ec98d15041c20ad5e44420e7c19a1"
    "ko"
  end
  language "nl" do
    sha256 "0bf9c236d04aaaf48babea08773c6acfc9ca99eaac65a84cd0b05ad704e7cd13"
    "nl"
  end
  language "pt-BR" do
    sha256 "69a9262f8abac3ad2511681252c90dcfce24511fbd076bf1e00c55fdb5d0dfc3"
    "pt-BR"
  end
  language "ru" do
    sha256 "6e88a437b360b3e874a0b5b0feade25e2a44f364b45410b9d945a5947cce1f35"
    "ru"
  end
  language "uk" do
    sha256 "e2211c2077870c853544a30f4f4494cb86f69b335db197b95ebbe890c2e14f78"
    "uk"
  end
  language "zh-TW" do
    sha256 "bf1a1f8d3668fa95cc4d6cd896b77ccd09362d15e055cb291eaadfa45eb6cb55"
    "zh-TW"
  end
  language "zh" do
    sha256 "65e9b666b3345f08bffa51b7c824abb465b284f06155963f9210a0ca10d4ec22"
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
