cask "firefox@nightly" do
  version "140.0a1,2025-05-10-09-29-34"

  language "ca" do
    sha256 "4e320292aa47ace72855c12ab40514ee9c7275e6d5db291daf81f55f09c92e06"
    "ca"
  end
  language "cs" do
    sha256 "a208b9ce80bf51b8e5e13a34992047f6f30cbd852f6cd7a4319c6b8379a96a4c"
    "cs"
  end
  language "de" do
    sha256 "b17e944e1eaee7cb4b41699dc7b47f7aa96c504c6e0fdd5d44e6a2d2fd8f82d6"
    "de"
  end
  language "en-CA" do
    sha256 "52ba75f23d7777e5338f5c03c2dc937ecb3e2a9352d8ca50ebf3de86066c48da"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c0b73f3fad2f3fa71856e7c3c03c190e18f6b31978678f515aad786b8c3ae72e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2ce63110d29d2803ccd3d30a372fb348328e6be42cf58e7e83c45174044055f2"
    "en-US"
  end
  language "es" do
    sha256 "dd84de932d9c8420fba04bd28b1821ef643128afa4c87dc03b9fd45c91c30756"
    "es-ES"
  end
  language "fr" do
    sha256 "bb1d7f2cd25b1e8591ab408506bb51be02ffd4a227500c2bb99104d41d5f7ff7"
    "fr"
  end
  language "it" do
    sha256 "9b799dc9e6c5c7340105dd30b53989711893202489cd9abc29c9d6106bdc4a66"
    "it"
  end
  language "ja" do
    sha256 "3a8acf0f23f181949be8d825acbdda9d4386b7027031930cbcebe44c6ee68f00"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9f40c1e8cc87da925af3f01a8d890103a45597734e4eafa7d2cc6e7bd3c937ef"
    "ko"
  end
  language "nl" do
    sha256 "5901b9d75a391677486df7442c9fb3188fb790855bde83dc92a118cdf41dd641"
    "nl"
  end
  language "pt-BR" do
    sha256 "88dd6ed757e7f23fc68ef32647f909cb048ddc32085d036a902f05bba145d1c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "665ed8e5513d97a7fa32ceed1efbd4bfaaebecdfe4e3cab98efa9055686afc5e"
    "ru"
  end
  language "uk" do
    sha256 "8c8cc3edb614687f075fc3725a8116b962f6b641b699bbd97911c3d2b6c139f9"
    "uk"
  end
  language "zh-TW" do
    sha256 "1cb01416d5836e9b69e17b97b0ab1a6c0a8d36177332c30807b3df0e0109ba16"
    "zh-TW"
  end
  language "zh" do
    sha256 "98b6c7ab92018357d22a4287883dfea5d79bd2b873b53bdfe235aad3308599b3"
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
