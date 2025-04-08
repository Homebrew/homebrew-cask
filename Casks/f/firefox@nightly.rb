cask "firefox@nightly" do
  version "139.0a1,2025-04-08-09-50-24"

  language "ca" do
    sha256 "ba87ca30cf14adcda79f8d381e0632ab88cc0fec5026fcbbd678934e22388e2f"
    "ca"
  end
  language "cs" do
    sha256 "96e19604f653c3324d1176b1d9ead2bf0601011b7ddcf6eb8dd953a45cb66d38"
    "cs"
  end
  language "de" do
    sha256 "f8655da935b68dd5a74ec3b8372f0696e8c0fd5baeb397c6c4ce1176b6802f5d"
    "de"
  end
  language "en-CA" do
    sha256 "539dedaa56eae2d67841c2ba3272b457b65468c36f4c8b0b922c642512a826f3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2b8d0e649f1ed5d31cbb04dac5e80353768901cbed3b29995bb1d43874dbd524"
    "en-GB"
  end
  language "en", default: true do
    sha256 "286b41e4cd5a23ca87b49e41c9db78f9dcbe408d7a97f8c3d08c7aeb2c4aadb7"
    "en-US"
  end
  language "es" do
    sha256 "05b16acc5e711f5d69896e17f0610c81997dee1d7f566a7e9228d7b5e95974f3"
    "es-ES"
  end
  language "fr" do
    sha256 "a2337da050751c873692a4399de066166c26be089ffc7e5ead1e132414d59cec"
    "fr"
  end
  language "it" do
    sha256 "912b2c02d712973e63e450504eece0ce2063f1f0966d2cbc7e14876cd9543770"
    "it"
  end
  language "ja" do
    sha256 "20cbefb4620bcb3e2995f364ce9e747bb448027a379edd53177d4ce026fdcfdc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6cbcd216128b7cbda01eb15ca0238b89b401b3baa9ddbf1101ff365a53388f08"
    "ko"
  end
  language "nl" do
    sha256 "179da4409cafa7940bb3381d9e2bdcca1058c785b0f28b9c228e84f9e2a7dbb5"
    "nl"
  end
  language "pt-BR" do
    sha256 "a3372c4d5818164954a05ab5009036d50fee6a55b730ddfd9a952012570749b3"
    "pt-BR"
  end
  language "ru" do
    sha256 "70836bf5ae8d9485d336dc1acd6e0fbadcf5a2d1f70cd795fa9889285fa54ed1"
    "ru"
  end
  language "uk" do
    sha256 "244889a3fffa79b70510e26156dd82a9d066dc24b0fc445bade806c41b4ce3cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "75da21e60b85315ed488fa7b9ef35f6c261a23c011a0a3de5f0aa35e3f5000ec"
    "zh-TW"
  end
  language "zh" do
    sha256 "ea86447df438cc52b6f46c1d6e4a9e79f2386e7efc113044bdf0cf7b8cd1bb0d"
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
