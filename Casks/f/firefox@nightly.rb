cask "firefox@nightly" do
  version "143.0a1,2025-08-05-21-09-24"

  language "ca" do
    sha256 "8c8689059d099f66dcc64ad306853aa46b13fa7e4ec2110cc81767c402e3aef1"
    "ca"
  end
  language "cs" do
    sha256 "b97d03d89a11bdd6a0c5403cb1b8f966259c62c944db5978eb8f2bcc51ed5ebc"
    "cs"
  end
  language "de" do
    sha256 "63813ee28c4e3e9297ff6063057523b50754660b1ea3b9e06bf51007ac9d95ec"
    "de"
  end
  language "en-CA" do
    sha256 "f4ec622e365805401e3c587bd636b27ee28d10a5e5b354a62c2b6d9c0bb370d8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "38cff616aa4774e40ba61524805340bd7a38df563bd8f2f4ebf241342469fad7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a9a1d1242ba6063e8f2d5788fae0adbd5a244ee8ae0333cfad9911c5b9dbb656"
    "en-US"
  end
  language "es" do
    sha256 "c5c14e5c1429c0623e60def0b990aadd1599d11839da2d2488dc436344cf2c4f"
    "es-ES"
  end
  language "fr" do
    sha256 "bfbce35caf751fa1bab1203609748f1b56281f6a2df59babd5454c667c5c20a5"
    "fr"
  end
  language "it" do
    sha256 "339e65896b2f1735018fb270b2d0b93779de819e23b3a8580596474979b31d02"
    "it"
  end
  language "ja" do
    sha256 "fdf992e3d114cafaa1cfc0d5ebbd9d6ab0b78f37cb9abcf2e1a58a87ad402c50"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5dde7f18fedf138e6bac8cb77f873b134b28141d040593ca9e9147ac30ee8f18"
    "ko"
  end
  language "nl" do
    sha256 "5034335925f526ab93d4e5cc4bd782285a85d67e24d10c74433aaae921a130e6"
    "nl"
  end
  language "pt-BR" do
    sha256 "f4b81ba301e1268d0568d9dbb85863f24e7271a0396163868bc0785df882c3e2"
    "pt-BR"
  end
  language "ru" do
    sha256 "70e2efd6bb0b4bdfe3b3e1d9894879e68b66ed1598e885901453b17c9c1a469d"
    "ru"
  end
  language "uk" do
    sha256 "11800ac54927c3ae265bff6a1efc7458c86c8cb9e0bafd15871018172d8f2825"
    "uk"
  end
  language "zh-TW" do
    sha256 "a5830933365c845fe1f46ee0ef5954c7866d38e8268fcb8ee52c75cb98e2131b"
    "zh-TW"
  end
  language "zh" do
    sha256 "290506b83565c9f8380c87db17ba7580542763a3d91f2e07f0ff7930e37a0b3f"
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
