cask "firefox@nightly" do
  version "141.0a1,2025-05-27-03-54-23"

  language "ca" do
    sha256 "4c1b5a9eae6cb1dda5fbb8dc03c2f92fc632ed30e6de7d22641b9ec5afec334d"
    "ca"
  end
  language "cs" do
    sha256 "ebac0473191bbb546307151b420c52b431d0ad4f20a04e9ef424f1f7b31ed87a"
    "cs"
  end
  language "de" do
    sha256 "3ed756613c423b61ca4f82f674cd20cd7d3019f853391f2b261630c938be43e1"
    "de"
  end
  language "en-CA" do
    sha256 "fdfbf5ab2edfc2e5d908e16f3bdc6e7f024bd235e7de3f9eb57dc5f0de5ab5d5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "48efb8c68f2fcc3db886fbf36b9dc3668cd28db6a79aeba461c2114b2e87289d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "286e0154f8ea807716761483bafaed3071f5911ad36f4ed56364bb9dd3a65f7b"
    "en-US"
  end
  language "es" do
    sha256 "428e115f9ec56a497c58dc821a1ee11755ff63638efa6d12d20b2b5ab7786a72"
    "es-ES"
  end
  language "fr" do
    sha256 "b14c0720b3974a5204efbcd5837827ce2e3d8b8988be4a84199185a3564fc1b2"
    "fr"
  end
  language "it" do
    sha256 "23f6d79d8acfdfc5d9ed3ea6c7ecccd3097020fa25dff99c2b3ad22d4f6463ee"
    "it"
  end
  language "ja" do
    sha256 "9f5641ed9470bddbc6b1618e00fc2f63758281a524b603f2744dc6235c77f379"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c89f6fc78decef620503b87d3330e60fea4028abbfa837d3434f9331a3c5434e"
    "ko"
  end
  language "nl" do
    sha256 "dfc0acac4a187ad657832ca079ccdda314578c59d390115f566694eab797ad27"
    "nl"
  end
  language "pt-BR" do
    sha256 "9202e228c53bd573c91248390992cbb38dad27843fd79d8adba1f69786e390d3"
    "pt-BR"
  end
  language "ru" do
    sha256 "84787926fc89ee8be22d22d504efbcf768e083a0a605d2c42f845c5aa5498ac3"
    "ru"
  end
  language "uk" do
    sha256 "96e97eb337206cc797325cbcb65b425c346ec0fe137c5567b3e3227621c75997"
    "uk"
  end
  language "zh-TW" do
    sha256 "f2f8940e375d2290f1a562d887b096591a889bf66b128d8b62f9cfdc4bc661a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "088694f9f35c9524aeb0ff17ca88f8c4c3271a0961fb74f93ef1795e03619ca6"
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
