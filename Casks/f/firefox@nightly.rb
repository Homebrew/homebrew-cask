cask "firefox@nightly" do
  version "155.0a1,2026-08-02-20-12-28"

  language "ca" do
    sha256 "d9bfe4bebf635f2e424d5aeb654d29c46ddc8f60fde430cd21a2f32c1a7748b7"
    "ca"
  end
  language "cs" do
    sha256 "59ebf57d108024e074cd5a58d14d7e43f57ad2f96db9211195873781559ad1b7"
    "cs"
  end
  language "de" do
    sha256 "55b30f3908416afd78f059bb431e0146ca6a02d7e57b1f630af283b6b544cbfd"
    "de"
  end
  language "en-CA" do
    sha256 "58a719f0be6d8935b4e5b960207484e4a57db6ede4cbb4565cd6361344c0761e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "35ac61f48e11f184363e795039fc6dbed049aa8e0eed461ee6c2c0e6fb45645a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "44e4492e87e8833123e7ca17a735d64f9e941eb326109d2979b83b481fe453bf"
    "en-US"
  end
  language "es" do
    sha256 "3d9f131547f2bb74ac43a938b585fab11f1597464bf4a85d6cc91c4f31e8d9b5"
    "es-ES"
  end
  language "fr" do
    sha256 "4624a8d13917108b44ff1e622198dcac0bc626dbc20202ed148c9f45cc0de2d4"
    "fr"
  end
  language "it" do
    sha256 "9509a4619e4c4bc9edc336494be93b8e7cd2bf295870e5a9845e4c438bbc719d"
    "it"
  end
  language "ja" do
    sha256 "576f449b21dcbc47c5ac707e92564b058c81103795445df7cbc46a45024b6112"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "456d89917c9ec8dd3256ba9706ae2377eec20e1d3ccadc69d482dd1c6667291d"
    "ko"
  end
  language "nl" do
    sha256 "0f8d658c3b0e9e53a72b685f1653400a897035803759fcfe7cb6feee519e80f5"
    "nl"
  end
  language "pt-BR" do
    sha256 "9a57f22efd95511a1db7067344553729b32d08ad2f49f4bd92e22b639848613a"
    "pt-BR"
  end
  language "ru" do
    sha256 "9d9e9b43d63c4dd485bdff75cd930ed57ef16f775e0a3b426e26d67bc0bc04a7"
    "ru"
  end
  language "uk" do
    sha256 "7b027220778d97a2f372dc28ff365b80881fd7349775ec529727fbbccd302711"
    "uk"
  end
  language "zh-TW" do
    sha256 "fc40d5393ceb1dc4671a122f00ea17e3dee0685f452659c4ae72e288c51b1e96"
    "zh-TW"
  end
  language "zh" do
    sha256 "71e02de9fae0ec86df90d687e920f0e0c3bd2016ccf44bfa6e7388636c504eab"
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
