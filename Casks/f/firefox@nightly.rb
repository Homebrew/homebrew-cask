cask "firefox@nightly" do
  version "149.0a1,2026-02-17-21-11-40"

  language "ca" do
    sha256 "5e4357a39f7e4511dadace9fc7ed9f58bfd1ba66b3603d3ca2658b181add0d81"
    "ca"
  end
  language "cs" do
    sha256 "ebbbbe41c5a33a7cbab98778c91cc4445dffa2a4cd6fe741759f748d6b9aa349"
    "cs"
  end
  language "de" do
    sha256 "b633421420c733c9e2c220ce445085b79e6ab1992143a64680cb00d316fe6bb7"
    "de"
  end
  language "en-CA" do
    sha256 "0d02dfd7ba95b2b3e574ee19dae13302aca854f990c801e95db78b83155d798b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ff60532eb858b4c1cd98d330c99ba75c2586413d5054e07741e579a652deeff9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "873bbb49167e4caefc9b8c5d955af1523648d416aad91c1d8fd8bc02cd29f43c"
    "en-US"
  end
  language "es" do
    sha256 "9f662afbe90f8b070faccc0df07c59c1634aac6da8cb28cef3d692139827e666"
    "es-ES"
  end
  language "fr" do
    sha256 "787bb901dd1868d9e0603d8a8062f1af0828c8dca773947f68a8d0cb8aef6b74"
    "fr"
  end
  language "it" do
    sha256 "b8946aebda446448b397698a7e1ca650cf1ecd2742bb8f19286818520e3512c9"
    "it"
  end
  language "ja" do
    sha256 "e961f363fb8fad7e95067ce1828e10e515510cccffa56a1ab8629833895a6e1c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a311e2b788a7ea0b66788c242d6b95eb5c5bed27d8ee3063c30787a80ee6ee75"
    "ko"
  end
  language "nl" do
    sha256 "b48efcadedb793a370ba0a1f63cbb4ffcd3868d0a05c32cc925d40fdb8063ce3"
    "nl"
  end
  language "pt-BR" do
    sha256 "39e13f381cab6e7c9f77acb5440f650035b81db9569736a1a7ed325a182aa466"
    "pt-BR"
  end
  language "ru" do
    sha256 "ac88d0889afbf7c28ee6ac9737b9e05cfb241405e81c82acf12dbcd9d99043d1"
    "ru"
  end
  language "uk" do
    sha256 "7e470d074944bcd7e8e7eb99b2d981e545646019499fe29da02c2c803916398f"
    "uk"
  end
  language "zh-TW" do
    sha256 "c7ccf5b7057702864c86f0cc0e9bb9e81a67b4c05721a845e820a4c9eed46615"
    "zh-TW"
  end
  language "zh" do
    sha256 "5a7369c5604579311de94f5e28630ac72f8e12d2fb5dc51aabe66a8f52defd18"
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
