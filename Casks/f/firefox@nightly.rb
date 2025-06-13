cask "firefox@nightly" do
  version "141.0a1,2025-06-12-21-42-30"

  language "ca" do
    sha256 "24702a62728587e5ca3cb48ce64d29414ff12d909dc00b904133468ac2cecac6"
    "ca"
  end
  language "cs" do
    sha256 "e08bdd0a507f23a0cecb9a782ff483c31481860cd89ee6fa0ddeab2c670a55db"
    "cs"
  end
  language "de" do
    sha256 "d9c88343a768296436b35031d0469deb190e3a031e4c848067713e2bc19d4d58"
    "de"
  end
  language "en-CA" do
    sha256 "255a448b2f3fd4beaf1aee0fe6d8778649e60cc9a0c95216c40105e1df91904e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "46c0d97ba9b716f1d7338dca0525f99e697744014082880bce8a373b5c774667"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6a4aee993631e7f77c7bf37ee466d749f550202834295b2c04ba08b2aa406adf"
    "en-US"
  end
  language "es" do
    sha256 "1476b9b2c9292fb7e29c5192e654a16bb7676f51006e8b10f7ae2619b5e236c1"
    "es-ES"
  end
  language "fr" do
    sha256 "654981c413317c396144556b144ad8e6572f2bda0c17a52723dabc19ffda50fc"
    "fr"
  end
  language "it" do
    sha256 "4477d32cb0b96e4326f302749694bed928c5c853aa40d5241a92b3814682d91a"
    "it"
  end
  language "ja" do
    sha256 "e2c8352c3cdd776e2416fd9a2bbe086d0198852be759a19690b3d03ffa2a8564"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "68290d95014d32900beb43d4c1b6e37f99a2cbaa5c4a639c536852c92b9be0bb"
    "ko"
  end
  language "nl" do
    sha256 "b47f5e814aad0502f00529e143580ecbf7ce2fe1c7324e981b000f37b9aa35e9"
    "nl"
  end
  language "pt-BR" do
    sha256 "c76c38ce758a333f77e994b5b3ecc5566e0a47a2761f14743c6657de986abbcc"
    "pt-BR"
  end
  language "ru" do
    sha256 "b3bf4d689708349feae780d84d6ea8578e7403462516dbd64ec037ce52e42f4f"
    "ru"
  end
  language "uk" do
    sha256 "f31074aef716958faa04986602e5c87c11e421bb90f5920150c3d9df32cf49a7"
    "uk"
  end
  language "zh-TW" do
    sha256 "22593b75e578d7732dc3bdba28444381c056953d9400a015f3d1f140338cd788"
    "zh-TW"
  end
  language "zh" do
    sha256 "aca2c88e31e0d99db374e7aea7dee8cfe3341a0bdcb100f86fc604516627e361"
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
