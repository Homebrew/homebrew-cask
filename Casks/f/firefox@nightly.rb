cask "firefox@nightly" do
  version "147.0a1,2025-11-15-09-27-23"

  language "ca" do
    sha256 "47e5d01816e9ffebd6de2efe8aa902ee8c89941e646417df7b5bbc1a184df92d"
    "ca"
  end
  language "cs" do
    sha256 "5926f4413595aa473665020b76b9fbd86ea922c17a2ffb1323fb3f6263e512cc"
    "cs"
  end
  language "de" do
    sha256 "17420e217dbfc0200d7b43190bc4ab6497bdd40bce85ee94b5234368cdf089b9"
    "de"
  end
  language "en-CA" do
    sha256 "c75bf59be821fbd67777147973533dd56fa64c3ec092b9ede3705426ec03a06a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ddbe7c510c7d15f1da59e6e9ab99d479b59d48a5d46748698fd3898676b1445d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1b52085ff9a26300e145b74b907dbe803f2f47f3907c944c3f6bc92bc611642b"
    "en-US"
  end
  language "es" do
    sha256 "b87cd953f024d9f081c778f10feee5f7211cbad2fbcd5cdb47ca98a7dbd6f3e4"
    "es-ES"
  end
  language "fr" do
    sha256 "d7d603989f3d775cee45e3acac651f8b723720535363ba8e74fae7ae64220d17"
    "fr"
  end
  language "it" do
    sha256 "e5fc04b8835938bbacad276564617270501625012aed9a7309cc74864f10f8f5"
    "it"
  end
  language "ja" do
    sha256 "4ff211b1f46d875bf1aef1e61c04db7da351db897e7a21e4f42ffc17e55f9d83"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d6a4098780687d85d2b6afd87a36ab57c8dfd3c89b3ab308e6048ad0ece00553"
    "ko"
  end
  language "nl" do
    sha256 "bc765145042254518ace1189987853b17edbc0cb046801c5c5612b1d901a5fc8"
    "nl"
  end
  language "pt-BR" do
    sha256 "cda5421ccf3ab220ba85f6e1cf0b0a56c2a1f53a55c3cc71bf8aa946664fa38a"
    "pt-BR"
  end
  language "ru" do
    sha256 "a85227b67ccfc7dcaa2a82259d6780d8ce5261aca816a4ee816b5df44902eef9"
    "ru"
  end
  language "uk" do
    sha256 "4df2b66c2fe83899ba5c63f975034a37310f7f4dae69441623d9514125a04106"
    "uk"
  end
  language "zh-TW" do
    sha256 "03733f095e3a2e0fa45892ce2be583b2e70195182bf7727c86da2709897acbf1"
    "zh-TW"
  end
  language "zh" do
    sha256 "225f4552a5e7e7a58d5f36edcaaff0f5f7a4b24b86718f2089a26a34c859639e"
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
