cask "firefox@nightly" do
  version "142.0a1,2025-07-10-10-01-06"

  language "ca" do
    sha256 "5da28aa18b5d0ea12dc8b408657b3f792813c91519c318a954060ccbe349a406"
    "ca"
  end
  language "cs" do
    sha256 "7c143b14d36283b7d12053ed80bd069ed860a5f608a716ba1aec7195be3130c2"
    "cs"
  end
  language "de" do
    sha256 "6f7a877126eee43fa7ac0e0bb75529a59f99f30494706efc0a5278d37e1e0364"
    "de"
  end
  language "en-CA" do
    sha256 "6bc8405fd9325a997a89afdaf21d684636da5bf364cfc9b789202ffc3ec3582f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9611aecc23b4175fda7b35013540b10659d0c4c791a1513fdf1be6feb39bc5c1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "91ed6f5fc1e719dce5a574aeac873fa8b007ffb92b89505a764334698ba8c613"
    "en-US"
  end
  language "es" do
    sha256 "695a853f6b702cdc9982a46a97d9e2975fea7c34bc48888c0f8936042848fafd"
    "es-ES"
  end
  language "fr" do
    sha256 "b49cc5066a0ebe724229bdf464162d42eaf8889deba1ad4aea02a4bf26ae277f"
    "fr"
  end
  language "it" do
    sha256 "ad14d3eb66b1d69d96f214e8ac85377ac611f4cbcae1226355b9951855dee2f3"
    "it"
  end
  language "ja" do
    sha256 "8f77ebba269d7384b61626cc2b1dfe124b037ac284092e539b1459f7d8d773b1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9d8d0f23d8381fe49cefca6faba45bf66b3f4dc85f6ec7864fbba60980a6ea50"
    "ko"
  end
  language "nl" do
    sha256 "79df993c6522bf855a453e7518a2d82aa9c4741b9aa2b9e5021a54f8e1936ac2"
    "nl"
  end
  language "pt-BR" do
    sha256 "85c0a0896af43bd94481ecb3ddb8a726f9902658731fa24504f135615051f393"
    "pt-BR"
  end
  language "ru" do
    sha256 "45ed9fea70949ae5de79bfe63c5cf6e4c8e2d30a96d2dbaeed1a09877ce2cce5"
    "ru"
  end
  language "uk" do
    sha256 "22cc34566432dc7eeb7ed2cc9a2eaa00c7d5a9d454e69eecad278d2d20b0bf17"
    "uk"
  end
  language "zh-TW" do
    sha256 "1c9e57a39ba84d52d38d3c22ac93b8896317cc1681818417ab1da0542ee82bb3"
    "zh-TW"
  end
  language "zh" do
    sha256 "47f996dbb548e77857bcde709bee50b017ddf0a14c12ed24753eaf8ae51e8eae"
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
