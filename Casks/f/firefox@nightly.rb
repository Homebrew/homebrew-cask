cask "firefox@nightly" do
  version "153.0a1,2026-06-05-01-25-45"

  language "ca" do
    sha256 "79ee377cee9c893bbf2dce20764eca581345a9b639db38138e0508097ff9f954"
    "ca"
  end
  language "cs" do
    sha256 "718e4030c529d28a3683469cea3e7ce0e7641d42614231b3e5e3ba729d5a012d"
    "cs"
  end
  language "de" do
    sha256 "e20b75d9a58844b30f8feaf335f3b52f1c5b094bd4e55049094f7387ccaea784"
    "de"
  end
  language "en-CA" do
    sha256 "9964d4e8d06115de2b340bf95b4db172ed1b61c8a01a5d9868bf94c99a91ecc7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a74cf6518500e8fb82733833939dc1f7a89ec413520a6331acc7365da12d6051"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4eb447b9382a068ddc444f813edf25257b6613574fb6997d405e3a5bb2c63931"
    "en-US"
  end
  language "es" do
    sha256 "87a4004706d8da9e7756ede180f6d623f1007e1c089e3d467ea20434617368c7"
    "es-ES"
  end
  language "fr" do
    sha256 "7994df69e3227b34895957e2cd5cd340f08eeb957b5021f5b3f0b2b1e4e15e21"
    "fr"
  end
  language "it" do
    sha256 "4748e33c68f2fd64802d391beba2d495c5b20585a0012c001e48b5d5241b4269"
    "it"
  end
  language "ja" do
    sha256 "7cec0d3a73f5f512c79497082f46302987a8b2b58f7770015611c8cfa59a729f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a6b240001f261f788bf6ac7c81fca1487da79e80788f076bf85a4fd13fd07eb"
    "ko"
  end
  language "nl" do
    sha256 "9eca4598ef126c387a73aa3a8724c307087cebba88c72dd624d80ce8740cf782"
    "nl"
  end
  language "pt-BR" do
    sha256 "0163954f2f206eb71c25bec86dc09075ee25f010c1158730d5256027a980c5e0"
    "pt-BR"
  end
  language "ru" do
    sha256 "d410183a67d4e03df447c9872a60b6cb00d6c2ee85c35d0e27d63cb155d985de"
    "ru"
  end
  language "uk" do
    sha256 "c5047496c3055856347c6ee95856c8b9f84a1c4b395af9ca52df4822fdaa7832"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed3d98cb8c17332df78b4b0fea54b3a2ddbda74a5eaea8ea01abd1168c5dbacf"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f87c9b0c6ff46ef2d38137a3eb448e3135638bfb145b78c8e8bc4cb148d2554"
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
