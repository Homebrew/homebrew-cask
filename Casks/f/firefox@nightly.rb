cask "firefox@nightly" do
  version "139.0a1,2025-04-16-21-43-20"

  language "ca" do
    sha256 "f4de088f51d7da58b750408b0663c538c94df3066f6508eb0090dc5bf91ccc14"
    "ca"
  end
  language "cs" do
    sha256 "54f4becb896d47c9cd299952f9453fa76d9ee9e8b2f578ad5a04f7330cd62750"
    "cs"
  end
  language "de" do
    sha256 "ca0f7000e704e17f487765b5c2ca8b055887fb2108924b5b6b6aa796a349df3d"
    "de"
  end
  language "en-CA" do
    sha256 "6f69980ac3e1f00ca183a1f0eb30d935ad64dc3e1ebf1aedc770a0b8e64e9b86"
    "en-CA"
  end
  language "en-GB" do
    sha256 "28bcde632f9e173c2b081780f484c10a9dbb2f88136174437483a9aac64aec4f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "947b0c0b434159e7123a379743127a18e75557f1aba63b0892d4a0d09eadba58"
    "en-US"
  end
  language "es" do
    sha256 "1d063806791f01dcae1930a98c35fe33bb562c6c835912b02bdc185a9a387a87"
    "es-ES"
  end
  language "fr" do
    sha256 "d15e792755f168e86581fd603bceb8e40677922de9bbbd87284f66e48add317f"
    "fr"
  end
  language "it" do
    sha256 "8d45ec829c614fa3f7789e25330776b02221d9712ad32edadd05dc4db8c46539"
    "it"
  end
  language "ja" do
    sha256 "81ae6a4e1591cc1b140f3219654d2b9defce184c949f144ac1a5bfd267018e1f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7d68d91fcd8b5fd92d31ed3a2b35b34c4da758064eeca23576afd36d6d98a579"
    "ko"
  end
  language "nl" do
    sha256 "12c9d6222d2f9b4b29f9c561b056fb253f47c2b84fa4724a039f713748a40c59"
    "nl"
  end
  language "pt-BR" do
    sha256 "5873ac898502394c324be29307e03b42459c63d07ddb40739f333ced5118af25"
    "pt-BR"
  end
  language "ru" do
    sha256 "ed85cbc66b21cb3f4b475181de610f80bff54898967c631c408c6da9e525c3fa"
    "ru"
  end
  language "uk" do
    sha256 "8e8b5b979549ee4d3863320ec7ca9f8fc3183d9bcdb0ccfd41726b2987a75682"
    "uk"
  end
  language "zh-TW" do
    sha256 "046a34a8d479068fc76345ca9d9826c78ffd265aef535b4f73d8df6f042393df"
    "zh-TW"
  end
  language "zh" do
    sha256 "7455b33b2125ede0b8210b1c7e661d3f01ee37d3ec2a807068efa83ec781f977"
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
