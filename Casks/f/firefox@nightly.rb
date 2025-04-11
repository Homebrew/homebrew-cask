cask "firefox@nightly" do
  version "139.0a1,2025-04-10-16-37-33"

  language "ca" do
    sha256 "c2028c4ef9d6985a24d21063a825aa0c5c3ff06a6b59ad078d15c4c77dd87a49"
    "ca"
  end
  language "cs" do
    sha256 "34f40ffd9d7d950bfe1e554269ce4204b1317c455dc4e499a441679b46bea39f"
    "cs"
  end
  language "de" do
    sha256 "1cd09658f0ea06e78368ecd3c811951f2a41da1e842df3d241f669b0216ca802"
    "de"
  end
  language "en-CA" do
    sha256 "432107b458526f43208777d279f5993c95c1110ae938b12600b5dc236301a70b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0d32c8042e85001673677d0b3640c9f57c7ef6fefc0b04ee3b1b9040262210b5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0950a635fd0dc043a3eb6e2556112f16a3ff6672c74655397ce4295c5637ca30"
    "en-US"
  end
  language "es" do
    sha256 "547dd5b86de3e749f33426542853a01ef7c2927093da315faa545cfd2d8676f6"
    "es-ES"
  end
  language "fr" do
    sha256 "2fbdd507983a322d365e0c2a6b3f7384e7c49385890dc4481d09c05ec2447d93"
    "fr"
  end
  language "it" do
    sha256 "30b9aa425fb05d368c23fd69c4864d123665388b0656ae6d18bd6c7aaee810a7"
    "it"
  end
  language "ja" do
    sha256 "9125f9018eee174107006d8dfa49392585c7b1cbb18d411a9aef91218c1b4e36"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ae74ecbf175b379929819a6c8d24ee15188eab814faa376d43d55fa3fd60b781"
    "ko"
  end
  language "nl" do
    sha256 "2ffb9f79b64bf9a1fe42aef9dd059f409f985ed743c39048c008f39a5437a63b"
    "nl"
  end
  language "pt-BR" do
    sha256 "9e9faad16d8878069e7dfc0f1dd54371f65b65b41858183cfb9ed8daca621dc3"
    "pt-BR"
  end
  language "ru" do
    sha256 "c32a9eb550bb7acb11edbf17240c819784a0b19121f9555c4f9a33b56f8f217d"
    "ru"
  end
  language "uk" do
    sha256 "ec4006c5b2a13f12d5fca933d27aa7155803b37bd2eee38248027df9498e0fb6"
    "uk"
  end
  language "zh-TW" do
    sha256 "b99b4e21369497e2bdd728d7619a11a65f16f856cd8e9ec00fc8ef18d4b1b282"
    "zh-TW"
  end
  language "zh" do
    sha256 "fc0f7ed48199b0b90d099f1ea3903d15446f173aee6e04aa71d73e19d0522d7a"
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
