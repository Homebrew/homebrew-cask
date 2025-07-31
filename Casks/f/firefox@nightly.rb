cask "firefox@nightly" do
  version "143.0a1,2025-07-31-04-35-31"

  language "ca" do
    sha256 "9101e42eb779b838463cf17bac45d5a5bfdac42af5c4c7fd1ff7bf609167a90b"
    "ca"
  end
  language "cs" do
    sha256 "ed21344d80b5796f489e4be2fea385e4b48467c9374f67047040377d6325bfac"
    "cs"
  end
  language "de" do
    sha256 "dba9cdaf1ab87b71366a340b991e3b1f751fce34490b699305f32608c8a76385"
    "de"
  end
  language "en-CA" do
    sha256 "7e8afe4fa8b41edb9aaf3824ccceed963e97b46a3d932bb779fb14efb3180a1a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "33359c53698e2b5d055da3fbe9587a98e2175825e20aaf283e7f0ba05e5d353c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "67ab6c9fd8ffb7f0e6b1ce80d749c56536f8996ff20b900b7a621e5c779c0213"
    "en-US"
  end
  language "es" do
    sha256 "6bca94b2f793e90b0a14827187d06d0170f38d12ff3c892072af6c09973ff9ca"
    "es-ES"
  end
  language "fr" do
    sha256 "b46bc9583da20d94057130824fd0786c1a337d25efda367ec299271b17e39c8b"
    "fr"
  end
  language "it" do
    sha256 "96726eb3593bfefa1d9a649ab5b3742bc18d2824915c2bba81e788cbae301e3a"
    "it"
  end
  language "ja" do
    sha256 "9df169cbdf4ff9ef44a90a5e1f9e460087ea57a426fa28d75cd4a8507404eb4b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "20400826164e67a73972ea062671d0c7afc970b379dff18c526bd670ff318370"
    "ko"
  end
  language "nl" do
    sha256 "372c4c92b1d301749ca95eac74bfdfea68fcd97d4b2afdbb31ab9a4c576b5927"
    "nl"
  end
  language "pt-BR" do
    sha256 "105144cb2cbe10fced0ad88346e1549f11e9944061a4fed2028704c0fe4020be"
    "pt-BR"
  end
  language "ru" do
    sha256 "12331ccaae4f5be57e00bd036ef8cd9d4b4e749ad003540cba3bb43e29f1ee69"
    "ru"
  end
  language "uk" do
    sha256 "8cbbcda3e3e3ddfbd2dc6bff3291a32cd469ab06d80389f1a4368647e9727acd"
    "uk"
  end
  language "zh-TW" do
    sha256 "dfc41ae4b8b50d59ab8a202c7dc5b9a11480488c70971ddfd8e267aa12bd75fd"
    "zh-TW"
  end
  language "zh" do
    sha256 "543eb36fcc0002d202687ac54542beb2a89dca6c85feb4ef1455fa484bfb7204"
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
