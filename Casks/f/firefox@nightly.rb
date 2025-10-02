cask "firefox@nightly" do
  version "145.0a1,2025-10-02-09-27-24"

  language "ca" do
    sha256 "73878756ad8101cd0d05c8abec355757c276c961c51524572a5de2924244dc66"
    "ca"
  end
  language "cs" do
    sha256 "22ba0ce1ab9238b3c0fd95b1c3ab9c34d9241cdfff96526b3ac4b4787eb7ea4e"
    "cs"
  end
  language "de" do
    sha256 "2631033a80dc7e8f5d7aaeff3b5644b0199ef3c3271e4e85673f280a67a04067"
    "de"
  end
  language "en-CA" do
    sha256 "15e31255d7e9855918ac48e80acb41f6f5edd99845286354291b5332f0d96097"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ea7932baf9375568fb6be7f6fb8af66c5a799cd5460c146b645006f306f5cb9c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9c23b891d8745c27dc3824d1bc5c7682067d787bbdf09bed2415d37d8c5e5736"
    "en-US"
  end
  language "es" do
    sha256 "17ab24817b92125f33df45f415ee03bf420e0cc0932925777c2d779f82ae82dd"
    "es-ES"
  end
  language "fr" do
    sha256 "1b851764f0856598aef898bb44c6dc9fcec0574a85ae5b2d993eb569fcf67775"
    "fr"
  end
  language "it" do
    sha256 "dc4d5f4760046e4c93653d1c9e5ef6368977e3a7c44470ac888ffa7f4e92895e"
    "it"
  end
  language "ja" do
    sha256 "81383f7953c1be1664298cb46ec473df4b5e18715bb0442069625c8fda115a0f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7517400dd8615d6de21399e441ed0c86dc200475873a8546dc849e4ddbebcc53"
    "ko"
  end
  language "nl" do
    sha256 "145d921af898f0908849c19cc137c67ab3d2537bdfeaf0383050970ea43c1482"
    "nl"
  end
  language "pt-BR" do
    sha256 "02f2570b3fb1180f7b30245c0262baca0bcd4d571057ad4aed24469b8774f422"
    "pt-BR"
  end
  language "ru" do
    sha256 "f0ff4b0b549ba81edaec72dc6347de7c3ee59a76899243ddb348392002b181ad"
    "ru"
  end
  language "uk" do
    sha256 "f42c8b8e9a3ba17003548536312ef83454eb60f2c90d820caccae042578636c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "e8edda45db30de6091e7bf112fc74f88c5e732c229bfa6bc0c566c8d9b120c33"
    "zh-TW"
  end
  language "zh" do
    sha256 "c4ff28f097b9e8fd9e9b2d12811b2caaddb82ffa0fd34abd58f2603af8527d1f"
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
