cask "firefox@nightly" do
  version "146.0a1,2025-10-18-09-18-19"

  language "ca" do
    sha256 "a604aebc780869a4dd4b2b7af814ecdac48b37d6460e8244cc51bdfc6aaa16e5"
    "ca"
  end
  language "cs" do
    sha256 "e20d607011debd3801df6d4004544bce9ebdcccdd3f493bb80e077476ab052a2"
    "cs"
  end
  language "de" do
    sha256 "7dedb7878cfb4c4f1c5d19186c522b17d5826289b590fcbeac9791e405abc2cf"
    "de"
  end
  language "en-CA" do
    sha256 "b3d2eaa470b4006116b98350d08e60a2f051266b043fcb5051ea944b0d4a4a95"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e81d7b1cff62ea395d6536be335c8c4ea3c6a37ea0b0ab14a4a335b4a21c9c52"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c6340fda1d2b5fc9a784d3f6b817415f4c1f1dbdac674fe41cd85312f3dcdb41"
    "en-US"
  end
  language "es" do
    sha256 "44c00d216f54189ce4d48f0ba7527ae260daeede671fbe7762c0e2e76641a488"
    "es-ES"
  end
  language "fr" do
    sha256 "0d421e616080e53ef677c9a7b47373b1952a941297495a5a8690a2a57b9f3226"
    "fr"
  end
  language "it" do
    sha256 "0da42bfc00883cb09351db39a3617a4dcac4f6c523b815d27c33012fa117e143"
    "it"
  end
  language "ja" do
    sha256 "858a085f01d49f5abf3e14cb820487c86684e3c706382b2830a650ce9a497565"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d7afcc0a4e736dab1202ecb4957398eb44031fb5ff534f5c816464c3124a44d9"
    "ko"
  end
  language "nl" do
    sha256 "91b859e000067466d4697ca8da7e0b86340598be00b58301c3437cfe831e822b"
    "nl"
  end
  language "pt-BR" do
    sha256 "a45d78bb5467ec6b0ee277bdea597d3b6846cdb9e9b2ee9d5db3b1458b1bf026"
    "pt-BR"
  end
  language "ru" do
    sha256 "89c41ad674b24b2d75b6a3b11a7c97a49277937a1c90aa3f4b049b9e1bae4a94"
    "ru"
  end
  language "uk" do
    sha256 "4907bc7c2eec4db4932c9e647f7313312b1b4879631ee86698ea4ac3dab89cae"
    "uk"
  end
  language "zh-TW" do
    sha256 "7d49291bafb274fb50c30f70fc4ebaf8c4df5389b390c7a622c87a2c2ff6c475"
    "zh-TW"
  end
  language "zh" do
    sha256 "ed463ba68c38be3c8c9eb177b17bc37ae7e6d84aea63c4ac701c32595c2b7cf0"
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
