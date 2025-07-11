cask "firefox@nightly" do
  version "142.0a1,2025-07-10-16-16-16"

  language "ca" do
    sha256 "f4b443e7f450d5bec856a463b96c4ccd06b21631bae40ffc36ae070e09aeda43"
    "ca"
  end
  language "cs" do
    sha256 "48026ec64b1d2009396927613fc26e10e86d5e51e27531ea3528db895f9dca89"
    "cs"
  end
  language "de" do
    sha256 "41b30351ea1bf11fbe3e70878bccfd115184542e4be0ce2b2049cace70e0d3da"
    "de"
  end
  language "en-CA" do
    sha256 "2d1aa4df1c4af44921e57b82bb0100d3e74c2cd3624de0c432c9f1ffb5a3d07b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d78d63393d1749e74711eec443d5f3c5c9f86743facfa22bb1f2e5bf846df175"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da19465d9c343c6ffd1b81e0f883f06b93153dbf3e13f182032b7dbba8dfcca2"
    "en-US"
  end
  language "es" do
    sha256 "f2cee7c7825ae961b0a9db163838dea7f782a87b552ef5be6dc5961d0be3874a"
    "es-ES"
  end
  language "fr" do
    sha256 "11648085b79fb8e76b76cdce2b12cfb9534dbd7fa21121efe24e05a9200ece0d"
    "fr"
  end
  language "it" do
    sha256 "f4770dc2c4894fbcc5dfe4c106e1dabfb1795ee319b07b2852a9f45e20ecffc5"
    "it"
  end
  language "ja" do
    sha256 "9a3136f07c850351ae723c9af2c89e23de50408377f2fecea78197d37f90f716"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "de9bd3f1ce07226916d18962724763127c4965ed711aacc0bf10fcde1e6be20c"
    "ko"
  end
  language "nl" do
    sha256 "57f8afa585ff98d38f7a41504fb5add5014f486d195fa52a03d9d7e6367c52cc"
    "nl"
  end
  language "pt-BR" do
    sha256 "13f3876d7653cbd74467b0027bae3250d57b3498f2f91bc6f891a9c043d3fe01"
    "pt-BR"
  end
  language "ru" do
    sha256 "5f27e87203bd6108d63086c7de352a748e1d997f58662f3fec1a6b5748fe1721"
    "ru"
  end
  language "uk" do
    sha256 "70d3d4f58df176b7f4429bed4c13aaff2d41913a762457695fe10b6d20acd052"
    "uk"
  end
  language "zh-TW" do
    sha256 "6b2f537c8668d4af19d40456189b63449d107b21f626bc39b63e681517b663b6"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ee6051354b6e406b95c309a1445fc6d3c20c49dcfac87f92304fbb058e7dd46"
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
