cask "firefox@nightly" do
  version "163.0a1,2026-11-23-08-58-12"

  language "ca" do
    sha256 "d1119558117a855e703bebbefdddba33ff3de9be4288480c01a551fbb199a475"
    "ca"
  end
  language "cs" do
    sha256 "39eaea87d0eec122f3689e24ee6daa765cf68d7cfdeb2cf60d1806bb37c1847b"
    "cs"
  end
  language "de" do
    sha256 "c4df0e182beb2716e54e6b4d838596cd2a996cc913c401da5380dfe0afef6ad0"
    "de"
  end
  language "en-CA" do
    sha256 "187d0241df1f19c118315edeb18afdc3aadc148e167be830968365081996b4d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6862c6d45ed753248630cf0be0a41ff649737caf5f3eb7aa5a3b09ff0c33055c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ffe392c3a8680407c036443e52871c2e692227f0b2e58357fdf65a9ebccc96c4"
    "en-US"
  end
  language "es" do
    sha256 "15b7660314851d6b53571c81417a80fe4511b3a76dbbf5bd919f2950e469c95b"
    "es-ES"
  end
  language "fr" do
    sha256 "0176807c93dd42679ef155009bb3a627fa36f6107738b19c245971910052ef9f"
    "fr"
  end
  language "it" do
    sha256 "49dfd573de65f7d1f6d121a8ba6d645edfcd2fe7e24c8b55425a4924eb1f0b4b"
    "it"
  end
  language "ja" do
    sha256 "2a7e184bc9053ddca0a9f8a6c795a9c63162e002570d8b0d30fe564e2847f7af"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a9c7cdbf0931960fd03203bad25a6098a748c4d95a2b6dce42eff6ea8e4c4476"
    "ko"
  end
  language "nl" do
    sha256 "04e3a88b50a19d554060056721feb15ec0f6cb26bb99c162873e0857e36a772f"
    "nl"
  end
  language "pt-BR" do
    sha256 "716171532a263822525d2d92f37f5266752f64ff56ca858bd236ca4c80790b8d"
    "pt-BR"
  end
  language "ru" do
    sha256 "55ef074af19eefa74cb0e2fae098bd8b294ce7991d13cefe9f7311de62a543c4"
    "ru"
  end
  language "uk" do
    sha256 "3f2fb24c6c0f3827b7a863e1b58e2e5efd35cfb850573f3cff44a105a8af4ea9"
    "uk"
  end
  language "zh-TW" do
    sha256 "081df255bb1e5afbfc5b271eac1c107a86f251b6b1b078e33a83f0858c8b5fa5"
    "zh-TW"
  end
  language "zh" do
    sha256 "24ae9afda986e727eb91b3f0678709836260c4bc6cf2a5f4772e75a4cddf4d83"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
