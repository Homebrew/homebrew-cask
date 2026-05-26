cask "firefox@nightly" do
  version "153.0a1,2026-05-25-21-23-35"

  language "ca" do
    sha256 "04a25148b877436cf75e40c4aaf8447e8419a4233c2b3231aeeae18aa6a1e82c"
    "ca"
  end
  language "cs" do
    sha256 "6bf76d60bb975717aee515bc465d7a92e1fcfe44699cb3c1ef665b5d8adf2d13"
    "cs"
  end
  language "de" do
    sha256 "14bb51cd5373408c4181f1f5191dcf47193706ca8fb62f7943396d288dc9ea8d"
    "de"
  end
  language "en-CA" do
    sha256 "9ae957b6f60d58384c368942c846ae2bb986b4a1cbc850d0de5e8667d8cbbf8e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "688cf191526002d135df317223744e8011fee4fc80c29d785d752e1d621ce1e7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1294be42fb0a53eeba5964982c1e7a97ab2002d52259e038025d26fddaa4a2b6"
    "en-US"
  end
  language "es" do
    sha256 "bc74a5370a26afdde6ec2a755dbdd8548dc17c08ae9977ec66c4ae01ca932ad0"
    "es-ES"
  end
  language "fr" do
    sha256 "5486118297f83eded4a4662162bde01b0a6f4cd7e7d8d89ad44187b1ddc9f8eb"
    "fr"
  end
  language "it" do
    sha256 "630f8f3f70b26ba5eef1df1fd44464287eeef01ec0e13706664b3d9e259effab"
    "it"
  end
  language "ja" do
    sha256 "c7a4e6597172daa025ae15e238bed638ef8afbe104d43ce7996d7e4465d9eed3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "433faef0d5b16d3e296250b2e2635cf9a2b99552d2dd7886c88df0a0716b4270"
    "ko"
  end
  language "nl" do
    sha256 "709bff94d5f815b8ca3722e0f520ff75d066d91a8c6c98aacb51ce8cc533e393"
    "nl"
  end
  language "pt-BR" do
    sha256 "9fd11cc7a40645d4f6f5e4111ed77b7ff66da1bf235a21fcde53fc96635a7bca"
    "pt-BR"
  end
  language "ru" do
    sha256 "861e0b4093d89c718a5a255ff684a7ae1ca14bd3072856ca5f01025c4cb06277"
    "ru"
  end
  language "uk" do
    sha256 "1d7ea9602f473d1a0663448d0a57c58ae5e120bec7d6df3cca4218aa84f0ebee"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa9540e2351159ceb4d7cd736ea8609f3e99d76bb57070fb665f6383ef747f61"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e61da78e40c04a24e51931f36189471256210d28e45f254cd7e7e30fbbef4af"
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
