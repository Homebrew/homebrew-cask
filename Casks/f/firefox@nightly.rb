cask "firefox@nightly" do
  version "142.0a1,2025-07-17-22-24-29"

  language "ca" do
    sha256 "286f9ff46efefd6c7ee1064bddc3f4299074928bf20d4d08b41a9c13ab15d9fb"
    "ca"
  end
  language "cs" do
    sha256 "d7e38a53689859fe40eab8c2afe12b6a55f4754e9b21d3d805732108794403c1"
    "cs"
  end
  language "de" do
    sha256 "7cec6b1bc542643526a30c2f634ac10f554b15ab19069d1d1ee74ebae03588f8"
    "de"
  end
  language "en-CA" do
    sha256 "43062ab8b8d14f1ba1993d4b02adac5a1aeb9ba2f457c5a93e0729b045ed4ddf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "00cf0edc8d2969eb9be072d906b9d45e6a69f8a3f2e46040ce5961e8d384e1bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eda82164a6a6fd85b6b3292cb77f1cf3c2345e639da70665129f6de5fce411c5"
    "en-US"
  end
  language "es" do
    sha256 "f206cc6846547ce21696a71e3eeb7786d7f7acfc85497712dc94ae28f7e962b2"
    "es-ES"
  end
  language "fr" do
    sha256 "faf556e819d18fe84d2ac446062e07279da33692d4b93a5a4d35ae28e0e02809"
    "fr"
  end
  language "it" do
    sha256 "1ab64b66fc9bc97c32082733e971219c009f367b9bd32611c214480a1fbceb69"
    "it"
  end
  language "ja" do
    sha256 "55a426f07c72448768c7db7eaec7647ce747f5f870717b415152dc8f33b57d37"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0083e179dd5259d0a82c9adf9303055556a3e32bcf6a018caf3a716c5563c664"
    "ko"
  end
  language "nl" do
    sha256 "02a0803b5ddf2b097f3650c8f026be9313ed4e75a7f3c57bf8558a418435e049"
    "nl"
  end
  language "pt-BR" do
    sha256 "6eab9abb2dfb2969e4739b737f9c1c14542cd47bb0849d055db738d7f0ceb431"
    "pt-BR"
  end
  language "ru" do
    sha256 "7300cb0d7224c2e9392c6e99e02f2c7402ac2104caf7f09e3bc862ae2e0282b9"
    "ru"
  end
  language "uk" do
    sha256 "b64a339e1726d69be024e1d011f4b7cd5288654115c5c4d13b47398f52945bf4"
    "uk"
  end
  language "zh-TW" do
    sha256 "5dfb7c7c2d075472b932eeed758b7bdb575fe926e0783eeb6754dcd4825dd04e"
    "zh-TW"
  end
  language "zh" do
    sha256 "1379f1ebd09528fc6f504493bc3b0147ec97e62bb8630a2e5793fb151f61a294"
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
