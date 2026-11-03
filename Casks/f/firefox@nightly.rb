cask "firefox@nightly" do
  version "161.0a1,2026-11-02-22-14-20"

  language "ca" do
    sha256 "de62337d2470efaa731ef169b051df4ccce35dc04c836d9572f66d93a6162e09"
    "ca"
  end
  language "cs" do
    sha256 "21830615f341da14f1b67d76ea27cbeece8d23aadcd5494c9c07d778e78c8ae9"
    "cs"
  end
  language "de" do
    sha256 "ebec4b987d3aa1bed526730f5e3bffb767dc1840b061b93ec27e44b24fe3ef37"
    "de"
  end
  language "en-CA" do
    sha256 "6fb780d92566a8d611776fb2f0a113ac5a45952c09f850bf739fff8107d7ab26"
    "en-CA"
  end
  language "en-GB" do
    sha256 "655e719d22b8713e4afe84bab0d17e016d91c34f35d3baddb79b22994f448bfd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a170edd79ef128e34627c08280871cc5d9548938a4d58eafaa5a0b2eb6ddcd22"
    "en-US"
  end
  language "es" do
    sha256 "c6065be193f78cb5841b16fee59322cd17ad7b6e6c107da75813ae0f5f2e5285"
    "es-ES"
  end
  language "fr" do
    sha256 "485116ebecb42277a74b4146022059bebe94e6810ddfd1146eeff66a725cd44c"
    "fr"
  end
  language "it" do
    sha256 "5214b751210d6c41aa710a3c5776d6e8d4e52cac212d449858fa1a02ef49e089"
    "it"
  end
  language "ja" do
    sha256 "58e020d76e4d61052a2839423038192289724debae893ed039cf02d1401d7786"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b6a0302737f741e9ac8326746cd7d72f81cfc3ad30243dbdabaacfa5d04e2d60"
    "ko"
  end
  language "nl" do
    sha256 "f49668efb8729b2b9e89ff2719b07ac3a9331a425ef814e68a63e705de6a178a"
    "nl"
  end
  language "pt-BR" do
    sha256 "bfbee612bf8aec76a7003ab970b97cbe768e72fd55f552e2a7cb406834cad4cf"
    "pt-BR"
  end
  language "ru" do
    sha256 "a029e57ae52627905cadfa21eddd4b87926ed81893f0f82f3c2e87f0b324269e"
    "ru"
  end
  language "uk" do
    sha256 "a434a84b93d932d574a1a2b8b5a003f11bcf24e11cc12b726a43fc3a40eec910"
    "uk"
  end
  language "zh-TW" do
    sha256 "1c0cba8f6e8ee09e900c9fd710b879ae083fed77b5ba5651a8b4557e91757aaa"
    "zh-TW"
  end
  language "zh" do
    sha256 "213149d4e9f45c981aecf208648571067db83bd36635c287c08c4c8d4d3c2a91"
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
