cask "firefox@nightly" do
  version "159.0a1,2026-10-03-09-15-20"

  language "ca" do
    sha256 "67b52d486933792973ef851859d37a6ee3a1e0e3281184723fc4bb0d17f1e513"
    "ca"
  end
  language "cs" do
    sha256 "242730486c7d220664a913504976bcf825e81822bfb29570c79ac52178ec5fb6"
    "cs"
  end
  language "de" do
    sha256 "c794a3589e03ffc96894b69c0ea9d0c77a427a6eaf04be160c72cc835827f8c2"
    "de"
  end
  language "en-CA" do
    sha256 "b2090f16f97712cb8732fedfc4bb87fe926c956bdfe84c3f598abc94d930a028"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a1baaaa6b427c38b0fc1064857bccfddecfdec2438f40a86c5f7eccf96374159"
    "en-GB"
  end
  language "en", default: true do
    sha256 "081e266c736a130e58be53904e430be4c7240eb3a0f156e9e3c95a8c0224876a"
    "en-US"
  end
  language "es" do
    sha256 "e66782d2d0b0d63f458c2d06e23a81e72378a123caac86b87594fa7a372c591d"
    "es-ES"
  end
  language "fr" do
    sha256 "a5af31716cb40f91ae96f781a24faec7c280266180347bc7f1de00422b737e4f"
    "fr"
  end
  language "it" do
    sha256 "b4efed9c21c270849bac489faae36237f4139c44a4301a3d058fc78e2a381a85"
    "it"
  end
  language "ja" do
    sha256 "1257a97b711a1997e820aa3f0f244f603c2f7d9bdbc5c05e967819f73c5a6cd9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4220e3894807c29d389c2a4c770ab731060ddf28fc06772d30d8bf98d328f5ca"
    "ko"
  end
  language "nl" do
    sha256 "673ca59d3fff23203761fc92f362a331990bc6a754fbdfb9c953179125b89759"
    "nl"
  end
  language "pt-BR" do
    sha256 "2bae9e7ebedef9b14bc683890beeea42550773882d536956e907bb7a1f4bbea6"
    "pt-BR"
  end
  language "ru" do
    sha256 "797d304b8f657e48284dba2dfe0ecea67c3d06b436c7db24e84119ab33619da8"
    "ru"
  end
  language "uk" do
    sha256 "5bd28427f1cff81efc7512a06fd49992878fb7f74ffe5e237831f3652601add4"
    "uk"
  end
  language "zh-TW" do
    sha256 "b6b0a979d83650b56de0baeed03f075614404ece5052583d5b0dbeb45152bfb0"
    "zh-TW"
  end
  language "zh" do
    sha256 "c4301f0e895d75fdcfceb97ad1f3638f9fc6324c6a671f9b82ee609f5befef56"
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
