cask "firefox@nightly" do
  version "146.0a1,2025-11-06-04-33-45"

  language "ca" do
    sha256 "6e0a9228c83f0df9a7a870b071636713675d351632eb9bc98cd2c1bce649d313"
    "ca"
  end
  language "cs" do
    sha256 "2f496cf4cba6c183180fe2dc814372790098d3ee3055de5efab4540cc1b28b48"
    "cs"
  end
  language "de" do
    sha256 "63a89c0f3b9d295d137fc02408782e399efa346362ffde2b39eeac15fe55e908"
    "de"
  end
  language "en-CA" do
    sha256 "8ee4f1c34753caa6da9a077842dd66bc1771c862dff1395f70d62f7b37a1a655"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e4c20940acd34e7dcd360a51d5a55ed8f56c510de6197467090d894e1784ead6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fbca1660b734f52ccc734505706fa13fc94619cc201cb1ccbb0de4ea81520cdb"
    "en-US"
  end
  language "es" do
    sha256 "642641b627569fa7d0f15aff383e20be9b1b016da87dfcb01fa81e58ab9e86a0"
    "es-ES"
  end
  language "fr" do
    sha256 "eb8e4fea560a761952d874758cd61d21e52450c873faab979be692b6315572f9"
    "fr"
  end
  language "it" do
    sha256 "692fdf8cc71d4b551001ca87c3554b279c49e2bbc214db1764af31f804df4d9b"
    "it"
  end
  language "ja" do
    sha256 "6f8f5ceea948abfec4b9e045bf71999518de92073d3517d4b9d7e21bc2343c08"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a3a3883d81ef0cc2e77ca6cf2e6569f3c22465d3d73d288ca283fb4f2eced8bc"
    "ko"
  end
  language "nl" do
    sha256 "4d72ece38941f1a722fe1a0d04b41eae784d46e524ebdea1e2d286547e613ab4"
    "nl"
  end
  language "pt-BR" do
    sha256 "2c54425ac5869537d64ca4cef14feb46e1c661ef03d64775eff490ee7dae27af"
    "pt-BR"
  end
  language "ru" do
    sha256 "d0f8aa3a81c9dd28501c674955d2cc9cd281ff5fc765fedeb24fc5f93328b0bf"
    "ru"
  end
  language "uk" do
    sha256 "0e8b84cfd9dea1ba5b61af4eb02bcbcc6ede2be462da5983f12128829040d793"
    "uk"
  end
  language "zh-TW" do
    sha256 "c47f6594d8bc0a3002c68042bd3f44686090f120de78cf1d0a89001bfc98088e"
    "zh-TW"
  end
  language "zh" do
    sha256 "5f0df1f0c2785dee5bc318b26633357323dbd56fd96ec1f8c395ca65c9d442b6"
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
