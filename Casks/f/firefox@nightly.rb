cask "firefox@nightly" do
  version "161.0a1,2026-11-01-21-32-37"

  language "ca" do
    sha256 "c7cf994a2c2461e117ab0b2b4236c796d510793392cf38501a9152bae01891d3"
    "ca"
  end
  language "cs" do
    sha256 "5af0a3fe7d8602699d54609cd7dc1ce9609a09ab7d9cec88f6f6b43ffcc91ba4"
    "cs"
  end
  language "de" do
    sha256 "eb6c907d184b1b3bb8e8d0f471c49dce08796c28af768c08886e49fb390166eb"
    "de"
  end
  language "en-CA" do
    sha256 "388a19dfb2000b5c098ac0bca6973f60f226a904ebef74a022ce7b2c2952421d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dd57793b37f4863f31df8c849996b19b3e7c9faf7b208b34a6c24950f8054af5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6624452fef2461717dfec61a82dce66356fdc580fdf78f63f6b3447b50409e36"
    "en-US"
  end
  language "es" do
    sha256 "57da71ef0de548f54b328523e195b82162f63dd70ff4d0d411d1ae79f92996e2"
    "es-ES"
  end
  language "fr" do
    sha256 "3b6464d4d9d3e1c8f4b9965b992be330d306874828800c16ed3e38d949620d59"
    "fr"
  end
  language "it" do
    sha256 "8185bd44b784c6c8fc9ca6592085b167f0c64885edfd9d0766f466e7916a1dbe"
    "it"
  end
  language "ja" do
    sha256 "ccbd77aa1dd041084e49cc782b5afc4cfa8d04387887ceae0c011ed8051537d8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "51c7ceaef695a76a1688d2e71326467c2516bb4aa2499c77c2c05c534157420b"
    "ko"
  end
  language "nl" do
    sha256 "a0116a6c35d26bff0cbfccb57a961ff5f9cf92ebb3d624b76ce6801e4f32b689"
    "nl"
  end
  language "pt-BR" do
    sha256 "0f2190cb0f27791489bfdb5a0d3209e56dbcc011c267c483b4ed41b048107f43"
    "pt-BR"
  end
  language "ru" do
    sha256 "144b86969ca708a1495dcc618a9610f3a9c27112ebbed83f7c52cd692d5efd8c"
    "ru"
  end
  language "uk" do
    sha256 "713f8d8d2da0226ebae348f1ae4f0605e85998d9f9c5afee33e966d1ade428a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "57301480dfee00b21ba57bb80f388ed277071c2e58e8f9293d74b6f7dec8a275"
    "zh-TW"
  end
  language "zh" do
    sha256 "070a3a62a00f3ce1a77d684d35dec408caf7b5e243143950ea65e58e48acd1a7"
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
