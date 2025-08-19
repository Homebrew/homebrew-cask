cask "firefox@nightly" do
  version "144.0a1,2025-08-19-09-08-10"

  language "ca" do
    sha256 "2b56e0a90f9e26580fd4a2dbd4bbf5e59e813e375dd467137c4a513a5e4b95fa"
    "ca"
  end
  language "cs" do
    sha256 "a7b59b60cc4804e23535ec221e9ecc801ae056d7a208162dfda054e6d4046572"
    "cs"
  end
  language "de" do
    sha256 "31e843f6541726198d83d1482c6a5fba294576148f09b11b9ebb8ae91fc725a3"
    "de"
  end
  language "en-CA" do
    sha256 "a71b7c12163d961ef364fe31ed4ae0c85df9b9020b570d24420ee4ad6df12e02"
    "en-CA"
  end
  language "en-GB" do
    sha256 "11863a5a92f7370498b8170b6084957e0aa641036120db5d634759000f505f15"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b9e06cc5ac5b960fadd6f2ec848be739f0870c91a24cdb79cff503ab08372b9c"
    "en-US"
  end
  language "es" do
    sha256 "603c5292d384d1eb8504653a76c252fe2b39b02a618074ad341f8972b4aa824e"
    "es-ES"
  end
  language "fr" do
    sha256 "dc56dd36ddc06185d5a57540c58cc0fcecea1c900e2013319baa925a603fa220"
    "fr"
  end
  language "it" do
    sha256 "402faa25cc0e2be756cf134c4f875d94a3f116e64d1e4b0ab70021d886e4f0cc"
    "it"
  end
  language "ja" do
    sha256 "ef1dbe4b03b3c61ff43dfa0cdc35941f52e9553473beb793f56e9514157a2b44"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3457fb3e0da3577851c3b7bea1ecae8bbfb7d027fbf4d2acfe752c5e957756d3"
    "ko"
  end
  language "nl" do
    sha256 "1f36e2f1b50ec74e80625179a9a8057bce6aa09e0671c4187ad6d7ae42d30c23"
    "nl"
  end
  language "pt-BR" do
    sha256 "7bac3adb6a8c0bccc485eb74ac834fb3d3aa138dc1106bcb40cf29a2366c61fd"
    "pt-BR"
  end
  language "ru" do
    sha256 "7b34f773ced58db8b5636dd96545c577c2b4a42ada24ae4cdd5171a4d972df0e"
    "ru"
  end
  language "uk" do
    sha256 "cfeae9f0bac07ffbd1e54d011dc342148ff1a12d3a3538daf85d7d6a57b8c9ec"
    "uk"
  end
  language "zh-TW" do
    sha256 "465816adabe1b6e12f59fa41fccfdc9db161e9447afa46c755ad625156c4ebae"
    "zh-TW"
  end
  language "zh" do
    sha256 "bbdb175e7b5a72f3353ffcf8aeca83a7f7fa427106128dcd07e0355f3f7f8dac"
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
