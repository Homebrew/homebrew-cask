cask "firefox@nightly" do
  version "157.0a1,2026-09-04-16-04-49"

  language "ca" do
    sha256 "4904afd3e6690e7f72ee66879e30b08a6cc4a5e28ee36f4fbeef20c8292ab083"
    "ca"
  end
  language "cs" do
    sha256 "0fe29297500045c7f360a5cd93e5497c067ddc40289bca86a82b8bbd59438906"
    "cs"
  end
  language "de" do
    sha256 "9a0c425b5e0063aec4f926f0fb23b6dc6c9e75d8519d930c3a471a0e4f1361eb"
    "de"
  end
  language "en-CA" do
    sha256 "acde36ed35b2657056cadd58a345755a84966f035117c173251bc3c4ddb0d52b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7ea65dac45d55fa505e137d9ac69542d51e359d1842ef2fcb8a713691baca764"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2bd5395d9076a64191a0987b7291f33518cd407dee8417bb7b343f352336c388"
    "en-US"
  end
  language "es" do
    sha256 "0a0b4a5ada6be8011134954e0c96dae9279709fef936013cfd65043cfbe94257"
    "es-ES"
  end
  language "fr" do
    sha256 "e9d1101f7c6c88c464ca49c8e59d5e98cfb365f4a762d324eb99596f5b064c6a"
    "fr"
  end
  language "it" do
    sha256 "667483912a53acf157d6c1a5cf68fece840fa7a5baf1a84c753ce560fc29ae97"
    "it"
  end
  language "ja" do
    sha256 "a1b729a0facbcbda8719aec3a3d30e28ff6b05a80294ca598e6bc6c6a35ab049"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c055bef19115d31b99e41d6a8ee446c1463695c25fc650f0bfc0cc25c215d04f"
    "ko"
  end
  language "nl" do
    sha256 "aff923a88291652f8f6761e4b3d4b89f48e7a515cb95df5d0fb2934bcf04d271"
    "nl"
  end
  language "pt-BR" do
    sha256 "364017e648aeaca6fa021d3ed516baf70be7e0029973cdf3be9b91eed6dae1c2"
    "pt-BR"
  end
  language "ru" do
    sha256 "04d684d51c152c7c2f0e785a4a7a820c9e18eaa49b80bbf92b769b7794ced741"
    "ru"
  end
  language "uk" do
    sha256 "eba0deb268abf6ebfa7ee72e66a484fd90e9b9c201acbd7b83afa955ae33628f"
    "uk"
  end
  language "zh-TW" do
    sha256 "136636d7ddd682445db72e444c07a1814a0b10afbab7a91c48a6b9988b386814"
    "zh-TW"
  end
  language "zh" do
    sha256 "08b93b4a17ed53b6a995ffd2e4aed4df18b8d7351fc7b48c480ed315fec8d207"
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
