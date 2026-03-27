cask "firefox@nightly" do
  version "151.0a1,2026-03-27-09-23-54"

  language "ca" do
    sha256 "94ff1ca3ab26df8faa455279b4afca47071002910fc0c2bd94dd06b729f29f94"
    "ca"
  end
  language "cs" do
    sha256 "8e7a0f8c4c6c16830e49ff63c2eb9e018193a47c319f48ac88891e4edd28c886"
    "cs"
  end
  language "de" do
    sha256 "23a0510499f283c2165049efdee22684549c1e6f6621f216d09a8bb3736dacd0"
    "de"
  end
  language "en-CA" do
    sha256 "c30761c0a4ac5cd5d5eae702ae0fcbca466b432f65609651e96e22e9742b213f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "71a102624509dd30c551eef63a9395d7d2cedf0b1a5db928008415d5eeef2996"
    "en-GB"
  end
  language "en", default: true do
    sha256 "725592916f79799da7e32424044fd5803c93c7ee8b08153b110911f13dac1b2a"
    "en-US"
  end
  language "es" do
    sha256 "825b2a93bc94c92d515792d403d712a76cc696320732350eed69de1f8fb7f772"
    "es-ES"
  end
  language "fr" do
    sha256 "a8cac8c791e0bbad0ebb7f57d38179b1760c1434a464ff7129361ba8570c1468"
    "fr"
  end
  language "it" do
    sha256 "9be7af80df34ecf44a7b7b82e686bb40025ba55757d0e857178226b180b2f8c0"
    "it"
  end
  language "ja" do
    sha256 "a808a3f343a7b10865cfa68d902c1f5b3af1eea6a2d2b12fc854dbdf01ac0ed1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9fcac9f9ac86a3587d54f64847f8881a95bd940ba40456cd58370c7775d4c4f9"
    "ko"
  end
  language "nl" do
    sha256 "19eb2cac33e62ccd5629094280322c4cd3f0ff794b0ee8ccd291717e8487e11f"
    "nl"
  end
  language "pt-BR" do
    sha256 "526b1e22560a495b7d6780b3b42a18a9a07469b39e911bfdb7d648b1e686db3f"
    "pt-BR"
  end
  language "ru" do
    sha256 "52c416b8d82983c2a601713d1493dd87b9ec8dc0b6a308327c3d4f296f595bc1"
    "ru"
  end
  language "uk" do
    sha256 "673dedd101e37be7d4798c47eca1608d055416ec0341c203128c4b7491ca5155"
    "uk"
  end
  language "zh-TW" do
    sha256 "6a649157a1701d09af10b44b1c2841d6e029c036471f0eadbfd51e8a48a8758c"
    "zh-TW"
  end
  language "zh" do
    sha256 "49b7471c65dfc2972a25d687c78d6a4b291ce01e18aea35d07a2ca6ad78b9554"
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
