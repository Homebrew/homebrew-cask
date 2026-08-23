cask "firefox@nightly" do
  version "156.0a1,2026-08-23-09-42-36"

  language "ca" do
    sha256 "899d47fdb4e65d74d917b7481eae0d9db49a3b1f34b93e13b0d27f43022da8cc"
    "ca"
  end
  language "cs" do
    sha256 "00bf204efab18d15dcec674c9ae411fcd2d3392fd228e67f02d558f73391a0f7"
    "cs"
  end
  language "de" do
    sha256 "ba34f66b138aa6277c92dc4ccf9a0550fb323f8f82ae140fe28e5024bb200257"
    "de"
  end
  language "en-CA" do
    sha256 "7a966bf23a0c44732bf6b732e10302cc70598c97ce721a15bee6b62a2a73abcd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a7e86159bb24936c82a087f96e27f6177136773a95a74b1bb3cf4f02eb6cffd3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7df2b64c184409d7a23d5f7a248299f06ae016444c431b40ea66c62801ff0f91"
    "en-US"
  end
  language "es" do
    sha256 "e407417fe054eb74911e64b31711155b71c3e585bf7662e37ad2b1601e0fcbcc"
    "es-ES"
  end
  language "fr" do
    sha256 "f2444ab465bab3d4a346453b2c662854771b394d285e488f697152e81c8cc867"
    "fr"
  end
  language "it" do
    sha256 "32409aeb08e811ff0d457f3940870eb89c8c38610977b7ad9097cf0acda92cf1"
    "it"
  end
  language "ja" do
    sha256 "7a8232fb0bb610231e9e9ad4073364db50983db04b2d5553233ae52fb8ede95e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c700f10838aa8bb3080b56b32b897108e7aeac548dd8106a02d6fbbef6bf6f8d"
    "ko"
  end
  language "nl" do
    sha256 "e4b8bc33068c6acabca8243c35f5bbe746d5451db9b51928a864950586070a46"
    "nl"
  end
  language "pt-BR" do
    sha256 "82785837a7cd55fc18498ee3ab965272d86d5d750b7dc083653e5cfb15bc6135"
    "pt-BR"
  end
  language "ru" do
    sha256 "da0f1ccca6ce5de27ea4fb5612d9a31c722c4c8bbce7db574e00e91c0a1a812a"
    "ru"
  end
  language "uk" do
    sha256 "115ed959e2036b87c1ffa33afb3772fa695c59999a6bfdd4a15057f694ebba59"
    "uk"
  end
  language "zh-TW" do
    sha256 "23fdf65783b189bdcf30f39081aceeb76274ae80829b6b0704e65f2853d74d14"
    "zh-TW"
  end
  language "zh" do
    sha256 "ce689812096027f03a6ff8eea9c44d13ebdb96ee1ef507699658fc04d5f5805a"
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
