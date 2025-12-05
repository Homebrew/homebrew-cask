cask "firefox@nightly" do
  version "147.0a1,2025-12-05-09-18-40"

  language "ca" do
    sha256 "43d630d9808d0a57b82b254cf722c08a199fdfc3ff67a1f70bc07a3c40cd2303"
    "ca"
  end
  language "cs" do
    sha256 "386ca04b23ddd5f5c2eec04add3a51c660db87aab76496d7ad8b64ae130f0577"
    "cs"
  end
  language "de" do
    sha256 "8cd1cb4ad15a0317a2347676a5b932914c5696ab671fffedb1bd3489a5908737"
    "de"
  end
  language "en-CA" do
    sha256 "da6dbfe86940c96611dcb89ca7e5b0283834f8a25f8cc092a79262aaa0c6926f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bca99cd67776f865038173a8760804b2449293d8aed1a5ebd3a8e86fdadd16aa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e684d828f7606de7b80e77c2019044ef421cab7af02e8ce7d22c6b924b21725"
    "en-US"
  end
  language "es" do
    sha256 "7badd587bcb19a84a9c37e0c2e398d2989e1daf2354defde12ea5c4aadf71191"
    "es-ES"
  end
  language "fr" do
    sha256 "942a67e9e9499aa77ee3c22e541077fc6b6b1f75bbc64491591612dbe6ca2f59"
    "fr"
  end
  language "it" do
    sha256 "5da379cdef930d4931e76c34324e04d65b6fb1f59a744bccb8fb50e4685336b6"
    "it"
  end
  language "ja" do
    sha256 "93f21d08a9116ce7babd0c860d9882ce0cfcf35b5ebff923fc3b55809fb975e0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "922435938a4dda0d2853e51505ada55499bfc908d1d46a3abef62fd21898e9b2"
    "ko"
  end
  language "nl" do
    sha256 "58e7b2f59c7d0b53490b5a74d25ca3bc783710833c69d3b8af8eeadf6142a4e4"
    "nl"
  end
  language "pt-BR" do
    sha256 "89177f147487687431d1604a107def694fb346d2c8fec0a38aed9165e5a1292d"
    "pt-BR"
  end
  language "ru" do
    sha256 "bd6b1c19cb3c744d3706360987a775c7f8876fdf8b252d601c641be7c3bb07c6"
    "ru"
  end
  language "uk" do
    sha256 "68e1668069284d0ce03b76e099665784ee8f090161cefeec7d2da18502440a86"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b1a8ca750561b508eb462145f87f7aa5c22c1313fa4d2ee5bcafc5d7ca8c99f"
    "zh-TW"
  end
  language "zh" do
    sha256 "5daa40d18a1e1d2c10d3ae0159f422a1dd41789031077c65c73a2a1ef889d34a"
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
