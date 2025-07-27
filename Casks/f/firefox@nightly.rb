cask "firefox@nightly" do
  version "143.0a1,2025-07-26-21-11-15"

  language "ca" do
    sha256 "9a029bce9779f5f1878ffeac6e49b99a16693135d9fbfd55dd69d9d6c8f1073c"
    "ca"
  end
  language "cs" do
    sha256 "e29907e13d2375094feece43f6e3128bfd1ec210d52ccc9d750734a8d8a32772"
    "cs"
  end
  language "de" do
    sha256 "88caddf47ab510f8ca1e156ea18711d44e7db06ba7ee3a48060f8eb5497f2329"
    "de"
  end
  language "en-CA" do
    sha256 "2e09d3299fea705ffa06ef09def67112d8ba986bccc5e44c8acefcfa43b531d5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3a14e32f2208c38cabcb6f2d5bf3147fb03e97ac9d0b5147f250f5a6a028d52a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "83071a0f40bd5eb3af2123ed6232fe179076ffab91a39a76a9ac856d7db9dae6"
    "en-US"
  end
  language "es" do
    sha256 "183e775c70a34dab7d66e970b809089d63da59053f16632cc118b5ebc724921a"
    "es-ES"
  end
  language "fr" do
    sha256 "90acace3c68479de875d5d1718e1556d769699663af953afb1217c6357bb32eb"
    "fr"
  end
  language "it" do
    sha256 "e821f956d1c90e6439e3985078ad0c0b2f4eeba49497c7ea26d0fa683991e279"
    "it"
  end
  language "ja" do
    sha256 "a78812970db8000b2ae2a94571f7726a2d20daa58b6031bf253625908bcd001f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a68f435ae3c34dfb944f92a97341f37caea4bf4456f31e888b6d36c713d92d38"
    "ko"
  end
  language "nl" do
    sha256 "54f1e2ac75f8e0e3f70381dba9f9575c8e386739c044addd46d6f27f82b2856a"
    "nl"
  end
  language "pt-BR" do
    sha256 "7d96e4ab86c5fb77d16d8853a3d53b7ae6ed242c792c245511535feda8cccdf5"
    "pt-BR"
  end
  language "ru" do
    sha256 "575f5b71904e3a7ce124e2321cbcb48e4fa7d97b1baeffb777c7c46cf0208fae"
    "ru"
  end
  language "uk" do
    sha256 "f454714f7f7b25b4d4ca6261b1faf1da425ae432970ba46db3c67a50a657b702"
    "uk"
  end
  language "zh-TW" do
    sha256 "bf7713c313dc615263a20333591c45131ac7a2f4b2b07ba86a913f1ab4bdd4c3"
    "zh-TW"
  end
  language "zh" do
    sha256 "57956cf51709f4650de10926256effd0746972157a9d931e839a85a317bf1aea"
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
