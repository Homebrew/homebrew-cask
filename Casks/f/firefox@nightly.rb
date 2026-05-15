cask "firefox@nightly" do
  version "152.0a1,2026-05-14-20-34-26"

  language "ca" do
    sha256 "fc858db431f71a788cae4bd1722cdc14b03d5ae3eb475db023391b6fb21240b2"
    "ca"
  end
  language "cs" do
    sha256 "e2b971cd44ea78a4ba74016395e754fb7ef2616ef78eed1527e05efa36762b0e"
    "cs"
  end
  language "de" do
    sha256 "959b99f6e89a331466ff70a22f167378f2ed2eeddea15c3c9bb5efb86281bd71"
    "de"
  end
  language "en-CA" do
    sha256 "47ebb65a707f3d7a825eecdc5e072b059c52fb93b6898a126af24c20fdd8fec6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0091bacaf5f41c23a048546377060af13d5a4cf466ead41122fc49600c38c3c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "18c03944fcba57434b3e03ef6660cf3e7a43a8e774e6e44833018afe55288270"
    "en-US"
  end
  language "es" do
    sha256 "e2e798109dfa5df8e18b256959a59e9ad783630a0e5cab3c820dc34ea36dd151"
    "es-ES"
  end
  language "fr" do
    sha256 "ddcd9536285633083b50c1dcd8f7b82f355db164663e07d597674860d6466711"
    "fr"
  end
  language "it" do
    sha256 "62b49d2b312c822489bbf87f4ad7b607120ad7d4a71048b289b4cf02c8cf1e30"
    "it"
  end
  language "ja" do
    sha256 "2751d871be7007f6aca0a22175ac6b3a1484642c0aa18fcc86078b2901544f32"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3d9b3d663cce988f6a8397c5029d7cef116958c43321040806540919939581d4"
    "ko"
  end
  language "nl" do
    sha256 "b20d08f58361aa8025c2ee198acf9a8081210321c0cb3c01aa5d446537b3b2e7"
    "nl"
  end
  language "pt-BR" do
    sha256 "bde6b7590f0bd3096f9daf440e592fe5a2fa973aed90b3d89430817fc1c5f360"
    "pt-BR"
  end
  language "ru" do
    sha256 "590780d09effe5d130a2173593d6495de2a1c91d6da613b2268798b628ab8d5e"
    "ru"
  end
  language "uk" do
    sha256 "8ae6bd08a92fc13360205e89a40b6be8dce8fea78b9f84edd31e8315aa57694b"
    "uk"
  end
  language "zh-TW" do
    sha256 "f5ed7d754b5b7e868eb3b3073ce58d631e104f326c60e002d54d7acd446f2904"
    "zh-TW"
  end
  language "zh" do
    sha256 "063b76e180dfbc7ff30f864f4b31201dd914de396ef60a98ed8115a235729a79"
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
