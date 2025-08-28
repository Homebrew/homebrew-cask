cask "firefox@nightly" do
  version "144.0a1,2025-08-27-09-15-30"

  language "ca" do
    sha256 "cc706c06f989e069a8a10ee933dbf52a8a6040846fc74eced6a1d72689b402d9"
    "ca"
  end
  language "cs" do
    sha256 "70ee994d709538e5f41edddaefe9c5e6e7018ff1176b614057623ffcc4baf975"
    "cs"
  end
  language "de" do
    sha256 "f6dadb1c57bb49b3dcc2b6c44f5bbf35cfe7233dbdb9b33d7454e32daf3d0889"
    "de"
  end
  language "en-CA" do
    sha256 "fdca672a88db446442ed79948f7e24b7dbaac36b3b2fcb0ae5f05c90f80d49a5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "faa9b1e44d400661538dc25ec72357869c8de93debccbfe5aaa9c7febed3241e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ee0433347548150411be80c042db8ff02091f2052649a275ce19e7638a412b99"
    "en-US"
  end
  language "es" do
    sha256 "9a57cf1a471e42c5278af27efae97926f3281953db2247111a29d67f02f5d73f"
    "es-ES"
  end
  language "fr" do
    sha256 "c9b3b70015a78c1da34a6324a7626c7afdcebb6c2375b5d38e528d5e7bdd38e4"
    "fr"
  end
  language "it" do
    sha256 "cb152a9d5b0baa8de5622bc7be0e8713bcdec7814fedf26d80c9d05c5ba30f5d"
    "it"
  end
  language "ja" do
    sha256 "71302da0d9d1ec10215d114285483f6ae4800e86dfeec69c77545b2ed6f787e6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f2e8b89e0f372707c5502559a81196c54466083ed2df665aa4dc07e1611daad4"
    "ko"
  end
  language "nl" do
    sha256 "d1dcf9f758b419c9d6680c8bce2c57f677cb98d2f8d82d9cab61d647603abc8d"
    "nl"
  end
  language "pt-BR" do
    sha256 "153634f376f2e3b456d17a3a3656e68244b9c89bf5610042b213e533ef3f0a35"
    "pt-BR"
  end
  language "ru" do
    sha256 "c08f8f7a101828d00804656d57519ec79369fcb817b5afe172f335595de2dfa6"
    "ru"
  end
  language "uk" do
    sha256 "721c43c0939c473b99b10a941e47bd607ad316f192d1679a18efee1ad72a57cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "b45347513e3763f8a4d5519ddf9ff0d28d33c41710f82659cb6b4c0d1d0e253a"
    "zh-TW"
  end
  language "zh" do
    sha256 "e8639e06e68099de7456869694098b970841ccf2854e407092b98408f3516106"
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
