cask "firefox@nightly" do
  version "149.0a1,2026-01-23-21-46-40"

  language "ca" do
    sha256 "c27cda06183593c5dbf72824b4c19e1867236f58715347fb9b939eef3d482f7d"
    "ca"
  end
  language "cs" do
    sha256 "7cafed9572139428601ffc1c4aff7202f072c8ad1b90b07c1b9d48907b2bae0b"
    "cs"
  end
  language "de" do
    sha256 "be7df7d2434170ea23bf124592eeab42cc5cd05998215ff41cc858775c8c97e7"
    "de"
  end
  language "en-CA" do
    sha256 "1f81dadbf6623a5a7d035106247a84f4f17f60d1174a2bcd96f305a1dc5f066d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "22a7a6f3f03efc8970ea9d8eab383bff61fc271c305caec5b52cf8bbec3cc204"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d88a63fc1de61a749cd3d6317d844b73162965c4768311be1f90f307ba5a029"
    "en-US"
  end
  language "es" do
    sha256 "ee822c90a610c2cdbb09c83785d0c9e3de0f1ec32d9432ab3d0a3a7927ffc846"
    "es-ES"
  end
  language "fr" do
    sha256 "24d6f8d3c889161e705b44f293d5a9310d6ba739b1bf4b6f69e32f1ecb7a2c3a"
    "fr"
  end
  language "it" do
    sha256 "5d7f145d5b681d046653169d36166145e8c9d36be223a64452938c4cb1a6037e"
    "it"
  end
  language "ja" do
    sha256 "df7e33c7a5534af6b1e4af3208d0b1317a8f412a6528030486c7ade6d7337434"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ec4bca36f2521282ac98a6f4a632cc989de435f6493ba32380eb36b12f468a14"
    "ko"
  end
  language "nl" do
    sha256 "0b431ecbef426684bb3219834bd7c9f630ce1e3f1e5d2ee3acd79164d5420e83"
    "nl"
  end
  language "pt-BR" do
    sha256 "98e034895b832e93417a847775f0caa8e9e4b18e4c5b6d43ce0af87d3ee81986"
    "pt-BR"
  end
  language "ru" do
    sha256 "035ef346c5c7a1a45686dac1a9440540cd0a1d38a7c82892db33701509ee33db"
    "ru"
  end
  language "uk" do
    sha256 "16dc5c31eb95fd727ebda1517205d917c260fa83947ee0546e041f990a17f244"
    "uk"
  end
  language "zh-TW" do
    sha256 "917842118f6d2f604e67c77bb3a1391c863bc2202ea4ddb07dcd39b03285a90b"
    "zh-TW"
  end
  language "zh" do
    sha256 "d4d2ba882ff581023e1126b38e468f904cde8f2ebcf099918ef4bc5c6ed3887a"
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
