cask "firefox@nightly" do
  version "144.0a1,2025-09-05-09-55-35"

  language "ca" do
    sha256 "fcf907e1db88d7dd49816802a9c5debe2c8c4ca7c03dda190259d20904a4cadf"
    "ca"
  end
  language "cs" do
    sha256 "e28a1bb4366a93188f6da628af9283a08cf8320011ed13e03d71a756939fce48"
    "cs"
  end
  language "de" do
    sha256 "dfceda33f3286b91b8d9deeb6455debb7b090b9f8c43bc28ede7304a1b536810"
    "de"
  end
  language "en-CA" do
    sha256 "033dafce92c6e78cbf93e93eec351c477c4014175877057940e4a0b154f594ea"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f840cab3635da0bbbce8982a74951eee0807a470b2e84fbfd34290f70f471933"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8b1f1264bb7cb78f2cb025e3c1b461ae9beac3f0db555c7cca5f50a82881b4f1"
    "en-US"
  end
  language "es" do
    sha256 "f64562fb7b5476794c31b9936d5ba4ada727f9d32f392932aaa9ca3f76f809a3"
    "es-ES"
  end
  language "fr" do
    sha256 "97840ef04a328329aedeedc82194e9c193cd20e07d599139e007a57495673309"
    "fr"
  end
  language "it" do
    sha256 "18212d00f98826d6996fee3eb41c41106453d8b19337634a3c667cf9c8e95689"
    "it"
  end
  language "ja" do
    sha256 "11307008c51cc9e9d39366269b05942cbfc1dc0c755250c7279dda929606a6aa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c0943d138fd618cf04a538660f041f0213a07fb8fc55607c0b1420ab87cfefec"
    "ko"
  end
  language "nl" do
    sha256 "957971fd80466a8a4f6d5b71bd163ace7ac8569230cdfc2974aa1d64dd714669"
    "nl"
  end
  language "pt-BR" do
    sha256 "978144d1056f76595cf23fafbb1649e6e4a77edcec7289a22233eeb40e8e081e"
    "pt-BR"
  end
  language "ru" do
    sha256 "f76a0ce24cf949d478c80ca2409830a91c7a134711855954e981e617dadc25d9"
    "ru"
  end
  language "uk" do
    sha256 "589eaac612552de160151d2b229e5cf3c4e14d1a0f242b3dc4cf7b318b195de7"
    "uk"
  end
  language "zh-TW" do
    sha256 "01013e0f540fbea711cdf9d383fc3e2d1e3b37ff00da73c15f1c9ce74ff67d70"
    "zh-TW"
  end
  language "zh" do
    sha256 "cebe041ce8fcea9cac27e7f3aff2dc438a2106f7411b949f398dbaf330926455"
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
