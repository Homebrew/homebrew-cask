cask "firefox@nightly" do
  version "142.0a1,2025-07-15-09-06-39"

  language "ca" do
    sha256 "83a9660da57e9c3ac2c96ef4eb291f576e0027b1296fbe20c30bf713b0714871"
    "ca"
  end
  language "cs" do
    sha256 "22048549677bd310844333ffb6385185de5fcd8630ae25390e2458de28cf8564"
    "cs"
  end
  language "de" do
    sha256 "5fc47e86c77fc38c30c1824d9a37691063d8aa786bc89c35b3594c514aaa27da"
    "de"
  end
  language "en-CA" do
    sha256 "f7a678ab2030261938fbf50fb72668f9dd7a16a5d47fa428884f5fefc29220dd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "66ef0f10c0e4cfd14cded267646b3073bf8f890e5775fddbf8b4ba133cbed7bf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "611e2d05a99e9e7c2eabb2b1d162944bb3d8a7051c9233dcb4e0459ca2963053"
    "en-US"
  end
  language "es" do
    sha256 "167f991d63416da9d726410ec6f48afdc9292f70b6f126dc10f875575a5c22f3"
    "es-ES"
  end
  language "fr" do
    sha256 "a1e46abc05a693c200e3b7346eeddd72848d14cf11a4bcd9bab1dd176a72754e"
    "fr"
  end
  language "it" do
    sha256 "c41cb26383aceaad385254e90d892241300e4eba82a63c0e663e6a80b4b47327"
    "it"
  end
  language "ja" do
    sha256 "155e5a855b857a85e88ff73ff046b4541230205ae5c0d96ee9ba5e23ef452d80"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "702805e9ae5642c161a2ea07f60671c43a029caa421a13d9d8a5e26e152247e8"
    "ko"
  end
  language "nl" do
    sha256 "88ee82f05d9d21e3224c13ead358af7871ec3eed5d1f01df9d13006be86dc073"
    "nl"
  end
  language "pt-BR" do
    sha256 "224cf7c4e164da6e0378bd940a07cf36ea85d329582032dfe88db41596a73e30"
    "pt-BR"
  end
  language "ru" do
    sha256 "c45796b4b77d23ed761e6ff03bf6a293d98c4764d3370913c9c72247aef670d6"
    "ru"
  end
  language "uk" do
    sha256 "af03299b36a0866adbc193dd4ae3a075dfe1be3cab170b20e6d0940c37eece62"
    "uk"
  end
  language "zh-TW" do
    sha256 "701007daab38718c3b7b5adc518e6780eb0736300b97662d0aaa610848970be2"
    "zh-TW"
  end
  language "zh" do
    sha256 "fed5aad3c85c7389574eb3a99a6a7b6642ee84092ef07cdc32ed28b6faf92355"
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
