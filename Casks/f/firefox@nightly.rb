cask "firefox@nightly" do
  version "159.0a1,2026-10-04-08-08-32"

  language "ca" do
    sha256 "1bf85c236fa1330c631bb4f556521e799438ad2b7ac79226c163c6633b072995"
    "ca"
  end
  language "cs" do
    sha256 "cdebc603032f5cc24d6bf0fb0b24832456690b36bc20ed6b3b526d7be1a03f17"
    "cs"
  end
  language "de" do
    sha256 "87ac73dcf780bf15d5ad22fef6a79543a034ad3f17514e6faacd9cd816396f6d"
    "de"
  end
  language "en-CA" do
    sha256 "5e39c0560ef54b873a16678f89ff6cbf5c571def595c5a3977bef46e84dc113f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7c202ab09063fe951525243fe6b2ba61d41fdd3d4b893e7c5d5c85fab80e671d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "09ac822f4a6e637cb08a8b9f81d1a2c95da15d5fa52b4ec4283f8d546ff0e367"
    "en-US"
  end
  language "es" do
    sha256 "026a0eb5d178e02fd1f65b3be1377aad7ab4bdca9d91c911f178e618a9e22dc3"
    "es-ES"
  end
  language "fr" do
    sha256 "e13af49fa629d4d3ce36be83de2dc2ae6d651a361195cf0dc3c5c5d430374394"
    "fr"
  end
  language "it" do
    sha256 "07974eed3836f38c19404b2be185a358ba321fcdc58bbb50216897880de497af"
    "it"
  end
  language "ja" do
    sha256 "faea0ecb83e7a95ab8b559aea26f24a56bf4bf659528cced1ae83b28863e3fe3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e4a7aecc8ce22925348b7775477f22bd176a1186b8bb956ecf9fc35b668186aa"
    "ko"
  end
  language "nl" do
    sha256 "95c072f11dec4bc0c9d42436d43e7510f28d91ae30f0acf23c61dc0622ad67e5"
    "nl"
  end
  language "pt-BR" do
    sha256 "5a29d8fee6caba29955ecf9eee3082bdc0030ef92768ae091f35e0328888e27d"
    "pt-BR"
  end
  language "ru" do
    sha256 "0545e9985f2f3462865ebcaf8b06bc364f7542f43cfd45562c753e8222287ea2"
    "ru"
  end
  language "uk" do
    sha256 "988263b37e7d6aaaf9c05c574484d30055a38ec4843a451915102641a16e0cb9"
    "uk"
  end
  language "zh-TW" do
    sha256 "6fa9f94fbd2e128ce38e08cb6921e7f95011a59f2a58077769ff8c8577f3402b"
    "zh-TW"
  end
  language "zh" do
    sha256 "148bc78715105d27364b6ffa1856139524addd77ff3948aec3ff183d9a11698e"
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
