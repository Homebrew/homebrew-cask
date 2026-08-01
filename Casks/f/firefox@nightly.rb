cask "firefox@nightly" do
  version "155.0a1,2026-08-01-09-49-16"

  language "ca" do
    sha256 "8a03e0fa050bc3112ed67f17d4c40097fd2a3657f2fd900953d35f1d168e8b78"
    "ca"
  end
  language "cs" do
    sha256 "1eea1896b8a15569a1888d0d4873efa934486d541fd0e48cc69bacc0668d4899"
    "cs"
  end
  language "de" do
    sha256 "5ab907f607f64a92f0079dc3d18a4cafa73bfdaad7a3a65279e2023cbd81af2a"
    "de"
  end
  language "en-CA" do
    sha256 "279b65816eba276074a8b5b76ace611ca5a7e1d2e69d6011de91827c5160184e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3b56460ae0c829845466955d1559d7845bcbff9d32c6704dc20946bd887ae352"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6b0c58599eaa50bee0801085be6f8337d4021ae30ef0619426d7093008c9b4b2"
    "en-US"
  end
  language "es" do
    sha256 "b7e3dd38918a28fb8257e267f5b8653a7374cb0b6211777eb7c152f6b1af0a22"
    "es-ES"
  end
  language "fr" do
    sha256 "bd365c64bc3f496501de3010659f51397486ccbe0511e24f41e41ca6d2bd8868"
    "fr"
  end
  language "it" do
    sha256 "91e54bab34f3e51590e6f13d79e51052e44ab3ec6c858c14429e6953920fe734"
    "it"
  end
  language "ja" do
    sha256 "e7d919693a101a5ee80e1a3b5be35da81a046126f847d966afe9431b39866aaa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7f70f99c2d721df75215bceb174b5aeb36b4a0586967bd272891d5f8221bd062"
    "ko"
  end
  language "nl" do
    sha256 "89d32bf0841459a83792c77d262f3dd44ea2b181b33b59a7cf1d818fc101d140"
    "nl"
  end
  language "pt-BR" do
    sha256 "1d29b68a7a926b843f3701285a512ef66f42334f43362e2fd308ec7da3a025fd"
    "pt-BR"
  end
  language "ru" do
    sha256 "288073de583c697275c0cb084e6a24374470d449147917ed9762bf128dcecdb9"
    "ru"
  end
  language "uk" do
    sha256 "74e5cd35ca85b6d2909d03bbdd2de40a1e69b9a0e79e96ebae91aeb4703b7233"
    "uk"
  end
  language "zh-TW" do
    sha256 "d6eae7ab7c33d10c8ad686f51af6f71f519718199d2149edb128a97ebcf1afa1"
    "zh-TW"
  end
  language "zh" do
    sha256 "30d38904324a30a2c5142ff36fadd58d947bc4f67e98b034b1d5fffc5f8c05bc"
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
