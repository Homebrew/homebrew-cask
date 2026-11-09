cask "firefox@nightly" do
  version "162.0a1,2026-11-08-21-38-38"

  language "ca" do
    sha256 "af21b7918531b0366c1d76428660f02af135d6a3145f6644ff56aec4ed1f99d3"
    "ca"
  end
  language "cs" do
    sha256 "1bda92cf5dd5a048aab310f0773b6db14f0fd99b5416539f43f1e7eb708fb020"
    "cs"
  end
  language "de" do
    sha256 "33118b136861d3aac99cf337be63f92fd1567e553491cd94105be1beccde4728"
    "de"
  end
  language "en-CA" do
    sha256 "b1c295064b97d20205533e9f080638e3696fe22dd05dcd71c0d7ca534ddb41bd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c5871d58aac138d413a4289f0c78edf1337042d0be66ecc8cb134a91c349f1ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ee06921243d793eace1c290a77d4c15baadd2e8e04384020ebc8c1123af5e32"
    "en-US"
  end
  language "es" do
    sha256 "4d3b3d0d6873ced1ed8b64994fc25f8a93bf57a9c4a4411642074955f8c83b0a"
    "es-ES"
  end
  language "fr" do
    sha256 "52f4a32cb8debf640f49c5144e9f950e92b68415d04aef372c0b630cf7683b92"
    "fr"
  end
  language "it" do
    sha256 "ecf46818faa638a05169cd08585c95cee5feaaf618172bbf2fd0c6d8b648db8e"
    "it"
  end
  language "ja" do
    sha256 "07ef5101a6792e7ba4cf905caf41d9a85a9d008f0d4364961c23f4f517fc3149"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "36127625d55b33f827f1019afa59aa0064642950ea69d03a1715e47cbe03f1a7"
    "ko"
  end
  language "nl" do
    sha256 "914fac0ccb36845cba1a331fdedeb02bc9a82274359905c062aa0462521301a2"
    "nl"
  end
  language "pt-BR" do
    sha256 "ee8bb5fed9692bb8d86b60c86209f6570c3153665d617ff71c8c4075f0d58c15"
    "pt-BR"
  end
  language "ru" do
    sha256 "f269a68d78d64ac41c63a90d8e3140c36434cdda4dcf44789776f05c426c913d"
    "ru"
  end
  language "uk" do
    sha256 "a2ac6527bef3993322de8b171540bd7edb57ea9daa26eddc6d1c01bf02937c46"
    "uk"
  end
  language "zh-TW" do
    sha256 "d41d4dd8fb7b84fe4be6e41f4a75d33802a9a728973c64697950120ac579d63c"
    "zh-TW"
  end
  language "zh" do
    sha256 "925c40fda12d74d33b8411ea1fc8d9eb19669ce5e341eb29b6b7756cdb9e839d"
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
