cask "firefox@nightly" do
  version "143.0a1,2025-07-21-15-43-25"

  language "ca" do
    sha256 "2c236607520ed94c60392ef790db0f654e2ceabab5483dbb4ee288aad91b493b"
    "ca"
  end
  language "cs" do
    sha256 "40e9e34067c3182695781f37450e1fffe34115d070c4c0cb995f429da5be54f3"
    "cs"
  end
  language "de" do
    sha256 "7e8c50057984e12ce5482c5d24891e8d5dbbaf5480b20e7deec269e050d8e349"
    "de"
  end
  language "en-CA" do
    sha256 "ec47c0460bf118a6c45031bad1e52f5d5c34cfcd616fa9f5d229a057677aad88"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d29bb830ca43e3096435d7dfc22822137535ac71e2b7a003e513eaa5fa9cefe0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "98d3417409aa5e30bc2a75c3f7dcc8654bc34287bc7b8ddc9c019a55ddc32a31"
    "en-US"
  end
  language "es" do
    sha256 "c09ef22589d3b1595a1a38ca90bd2f2869bfee9a774fd6a72e344768bd892823"
    "es-ES"
  end
  language "fr" do
    sha256 "065dea566954bc5ad0112d1b442211f08418fee91b5b38e445645a99e39902e4"
    "fr"
  end
  language "it" do
    sha256 "25205e86ee9990a223af9e1ea77d73f3f5f267bc4a0d84a435baceee39aeeb91"
    "it"
  end
  language "ja" do
    sha256 "4dd049d3a32e99b6b629b58309491f407ec13b4813950b2ee6bead41edcbfc9b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8b10d68826ca103428eb69e0aa9a10b2c012ee39dc37d26c2e9300c1a6dc92c5"
    "ko"
  end
  language "nl" do
    sha256 "e27815692d8585282418d802c1cfd8f881441b00b780cf5acade7531f6760bc1"
    "nl"
  end
  language "pt-BR" do
    sha256 "5f4cf418883e7dcf51e0123301c5ce1d955099114bdd2b99af8645ae7b6218c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "c837baf979d64fb514e38d6ce1ae986d8da5ef71bc0461be170acdef79146963"
    "ru"
  end
  language "uk" do
    sha256 "3886fbe48fc5a5f200a818b9d5c8360c171d7b81ec42421e7bc4b3573a8e558d"
    "uk"
  end
  language "zh-TW" do
    sha256 "565eb4880104a060777ca280cafe88b1fd90b76855133abd36612c5cf3f0f6b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "04d2e91210bb597d02f3471e7beb324b06bdb22d9e4b550fd7bf641adcd84b86"
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
