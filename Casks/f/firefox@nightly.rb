cask "firefox@nightly" do
  version "140.0a1,2025-05-16-21-40-29"

  language "ca" do
    sha256 "6c3a6c7819d212a643d6c92b4dbd1d974e156fe2e69eee8148bf2d6ca947a348"
    "ca"
  end
  language "cs" do
    sha256 "f4901f47ebce9fedc0437123b14c5ba0c91c293f76f9c871ee15f59577880cac"
    "cs"
  end
  language "de" do
    sha256 "393e14cb957815deac244be607d2e133b0aa380700b0f41b1b2b0f5bf0d88d78"
    "de"
  end
  language "en-CA" do
    sha256 "0ce11c419b9d17eef5fe47e29f6f6b634cb1a215c52dc2352550d020dfa8083d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b5b8c70b5f86e016efbe6099b8eca7928086f98bdbaeb507d8277318f02e31fc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7447d3cc700a7a1ded08d87b3d7c8cb355ebf28c89b35632a2e5efacf09a1ee5"
    "en-US"
  end
  language "es" do
    sha256 "18cc5f5725739b8418413502879818c592ee742039f7379c1aaca692f22e1f3d"
    "es-ES"
  end
  language "fr" do
    sha256 "570da8af16134f2d4e13992442ad9cc06ae0198bb68c23c9c8905583d90e5113"
    "fr"
  end
  language "it" do
    sha256 "ae2c129837626fa01eb68886376b78fb13aefe3872cfa14bda90be85789491fb"
    "it"
  end
  language "ja" do
    sha256 "bd014ee908b9dd573c8421583afccaada44b871e7f937eaf789dd6d868ff4c60"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4fe4cf179f248b69102c5c1d3738ce27f8cd138570b155e1a6d3be55abb981a2"
    "ko"
  end
  language "nl" do
    sha256 "925d002b5939a824697d400b853f82ea91616bacf7f0f5cea17dc260c4938fee"
    "nl"
  end
  language "pt-BR" do
    sha256 "18d67ae1deb7002a6b92a15e07c5d65f417d0dd71cca2365fd7b5908c1b1594d"
    "pt-BR"
  end
  language "ru" do
    sha256 "86656a2fcfc49045103d4cb94a844728220f041fbfd6cb1729cc82cd1ddfa81c"
    "ru"
  end
  language "uk" do
    sha256 "45183b4c485b55a197a67a2ca0df7aef0a8ad07f68c871ab120e71e38e3c0fa3"
    "uk"
  end
  language "zh-TW" do
    sha256 "bfa24ad196da85f7ce49af7e96a66318d93dd1cf0d1c33e90e628ccfe0d5865d"
    "zh-TW"
  end
  language "zh" do
    sha256 "a06c9f8b5b3675d0ecb803e2f54b5f5cb874bcb8c5e7a23b2216e0b244dea1ff"
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
