cask "firefox@nightly" do
  version "162.0a1,2026-11-07-16-23-51"

  language "ca" do
    sha256 "5080444e378e28bd55f44bb559a9ab7d64f0b01e25904d951668a865e574f2dc"
    "ca"
  end
  language "cs" do
    sha256 "e2ebe5f41e8600146d62ac12120d9ada815b06eea8c61f94b2a0244f6c1f5f74"
    "cs"
  end
  language "de" do
    sha256 "432d22faf3a9f9c9ee2e03538a12fc105f173082d78ed03cfeacd9d9cf996173"
    "de"
  end
  language "en-CA" do
    sha256 "27c374a2075532f6e08fcdde59c5c360b4e72ef709ec08c908d5b61c4910295f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c103a8e9b9ea06f666f6970fc8c73233c0c266943d335d40f11a13004e4e3ac3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1c6035a0faf2b80c7c80066d04c965c54abb3edc4fca16dbe8fca9e183ac377e"
    "en-US"
  end
  language "es" do
    sha256 "5a74ee7c97d767be6f407cde2fa14956d3842b91a159c954be182b228f0c67b9"
    "es-ES"
  end
  language "fr" do
    sha256 "817f7f7b69a23e9e06082869ed583e3a468b0bba30c99464429ff8ac2b505e42"
    "fr"
  end
  language "it" do
    sha256 "d0771c1e2f4721afe860e4400b3918353d7064084c2e5a666a68566cb0451d83"
    "it"
  end
  language "ja" do
    sha256 "b14a8f63790839d0f7bb0c9d4d998c14da77945984f664126eb8abfb1fabc983"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0cbaa5f46ebe411665f5525c4bf9a9b22e924615f6d97b8cca1648689f30215c"
    "ko"
  end
  language "nl" do
    sha256 "d16e94dbdf0111df617d0ac7a1355240b99f2b01f322d5d3862b7a4e827594bd"
    "nl"
  end
  language "pt-BR" do
    sha256 "1da1719164018f69258f507c04c0274c19f5fc920ad5549028667b6573074390"
    "pt-BR"
  end
  language "ru" do
    sha256 "871352ddefc94f4558aca7b5f65f3b942e0e52aad167310bd92fd7c1ee0d944b"
    "ru"
  end
  language "uk" do
    sha256 "4e3c8322c5e347b5ea7b6f6547a40795cc844112b7ce0d17b39ee3ffdc5d906d"
    "uk"
  end
  language "zh-TW" do
    sha256 "83db9d8c0900312e9a38cfb638f002a25273b3cd19bbeeeb81da703828dc1cb8"
    "zh-TW"
  end
  language "zh" do
    sha256 "ab3d43819b4aae87ca76684613ccdf9d90ad86f799bb430b6fd47221804e9d36"
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
