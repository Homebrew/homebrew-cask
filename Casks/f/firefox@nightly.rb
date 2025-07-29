cask "firefox@nightly" do
  version "143.0a1,2025-07-28-16-44-45"

  language "ca" do
    sha256 "ad484eb11e1429435533c677aaf36da41e716dc235ae411e42ea2fbdc8bb31d5"
    "ca"
  end
  language "cs" do
    sha256 "6d75ed13a8578994bcaab97071e04bdb858ad18427295bc9826aaf6885d0a2dc"
    "cs"
  end
  language "de" do
    sha256 "43d5b819c18e7e7887fcb87b427bc113afcb13821b0a84e25fbd0df868dcd41e"
    "de"
  end
  language "en-CA" do
    sha256 "f7cbe2262b21c705285cba853aa5ef2b593a8e33923cb839c27d10c460f5a8dd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "901773f1b4318baa38cb9ce8d8a2d30248caf4ea4ea09af54de89f06c9c3eea3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a22c800ebb7004d35e7776aa5affad4f2b69f93ae90e89c4ceed2f448e5e3ee7"
    "en-US"
  end
  language "es" do
    sha256 "aa10c6d95377797c2a7a55ce99bc68e12a3d7a67f5e87f3e2b7809a1396737d7"
    "es-ES"
  end
  language "fr" do
    sha256 "b61e2dc41b4caf51328bcc305da40f1a144f09bddf4033b1c491e7fa8a3c393d"
    "fr"
  end
  language "it" do
    sha256 "bebe5151a261cb051866b23265ded61469682798710aabf168b5e098bf4e75d3"
    "it"
  end
  language "ja" do
    sha256 "3b3b3ea0790d383ecfd5d3649832ba9a1b3f136dfe945a430f980bbde00f410b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b4ee39c2d7127e80c908a71ddc3f207ed185ae5b37292ed5f735ad339dce339c"
    "ko"
  end
  language "nl" do
    sha256 "9015a90e8eadc209b940115ca1272994454a6d33d7589b46f9b0abeeddc91d12"
    "nl"
  end
  language "pt-BR" do
    sha256 "8b663075f3ad1275e7a68cc3bc9ad5c60d59187b679fc2e314d7fddc36bc057e"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa61a9763fd7ff08113894d1052dee8d90858c56f85627a069e5ee7046d9df31"
    "ru"
  end
  language "uk" do
    sha256 "b52e761eec575e629b3a3a1a7558a68c057fbe593cffa0f4de2e09de58212992"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f7e39218bc87ba8fac553ccbf1442559f4e06dd11e7d66a324d8f6619cb4354"
    "zh-TW"
  end
  language "zh" do
    sha256 "60aa21ecbd4ed81c9250cb24991dd3e30d960a487f035cad279631d5876392bf"
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
