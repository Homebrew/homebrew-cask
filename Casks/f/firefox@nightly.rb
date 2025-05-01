cask "firefox@nightly" do
  version "140.0a1,2025-04-30-20-49-53"

  language "ca" do
    sha256 "4363da247e3ca69d9b7707879629db0bf0653aeb5127eb5d862ac6014f1b8cca"
    "ca"
  end
  language "cs" do
    sha256 "4fc88dc70427f011601df0b88cd9dc630a69064688456a15b7bc47053db79634"
    "cs"
  end
  language "de" do
    sha256 "126663e16eea3a7244afdb540a915bf691f8e8c5c644b8d9edde073a56ad8649"
    "de"
  end
  language "en-CA" do
    sha256 "d06d8e89ef187002f2afda58bb3268f4daf004494d0488d820bc71b0a873ac2d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c51f7b323a2e241ff4f8b523cf8926a5f23679c45a69761b1992ca70e43851e7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "83d2a07bb807a2a37842356fd1a3a12ea746b2b205e2e08d7b3dddedbdcb00e1"
    "en-US"
  end
  language "es" do
    sha256 "8b68ff421e2a8d51c5d14cc17dd17dd360ed49dcce46e68e64ae1a67a149d54b"
    "es-ES"
  end
  language "fr" do
    sha256 "8626315758f8484ccd34337fb0800ee37e18920e477693ec7210f4fc9fbabd74"
    "fr"
  end
  language "it" do
    sha256 "d2e66d6d7f5dec7d8c2bbf132b69cc5d92f055bd58bbf244eef874327e480481"
    "it"
  end
  language "ja" do
    sha256 "28b0b894cb5e082b8c9a42fb6dd682ddbb0b5dada8e5471b3e5792a0ea6227de"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dcf7e64773ddacd006f607d34b88b9709d3bffc83ef4ecf7bfdead0b0842a662"
    "ko"
  end
  language "nl" do
    sha256 "7df6ef8e3c860e2a1ef3dd8f961096050ad3ec3fb789059a6701f93965b10ee4"
    "nl"
  end
  language "pt-BR" do
    sha256 "6bfe741a1d60e843b6baa7996e823ac78383ad263d4f5ad886978d10d9050ae5"
    "pt-BR"
  end
  language "ru" do
    sha256 "a5ece9d899f7dc471586dd5d149ade3b6acfa1a09feb2623ec8f51f6ab024d67"
    "ru"
  end
  language "uk" do
    sha256 "f8257f2bf1a0c0d918be933ee223de211175e3203d04b90b5d5427a8acc3b7b1"
    "uk"
  end
  language "zh-TW" do
    sha256 "0dd61d3690915a0fcfe8151a435f72321e741cfec28f94c540cb818e9e14209b"
    "zh-TW"
  end
  language "zh" do
    sha256 "c998b93201b71ed911b385d2815a318a2afae4bfe03c262ba88e38a2d6818bcf"
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
