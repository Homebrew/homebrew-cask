cask "firefox@nightly" do
  version "149.0a1,2026-01-31-09-17-43"

  language "ca" do
    sha256 "9effb450a7aed73a0c9c7be2dfcbe83c1ec1b3320e31124f3f6d77ac3f352ab9"
    "ca"
  end
  language "cs" do
    sha256 "5e3b207dfe1fbf523370045b3a00e4b560e96c5d85ac2021265ee68d7021306e"
    "cs"
  end
  language "de" do
    sha256 "321d98dacc6cd0afea4b83816e768f01187344f4f3bd7dfaa41a8b300c702992"
    "de"
  end
  language "en-CA" do
    sha256 "c652ba331038f3a17c174473bc5396bceb40103065331d11b6de6b4afdc073df"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3f269a5920f21d5089232f281c3cfa239d7bafeee5109fa83b18f3f1a8c07320"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5a47dbe1fa09ae3ff872c67dce494f6148b3403df8ff8fa177afd50cd0bc6c9f"
    "en-US"
  end
  language "es" do
    sha256 "92c687d5ebbdd83131c2d9e066c8920131a6571200fe3657b3d22db062d34339"
    "es-ES"
  end
  language "fr" do
    sha256 "20393bb5f94dec4ba936cd89f36ac4270770259092d2ecefc0decc9a3f022c8a"
    "fr"
  end
  language "it" do
    sha256 "15a539ed969712cc20d8d4d619ab35b0ef8210ce2e029e3012f6bbb99f9c3b73"
    "it"
  end
  language "ja" do
    sha256 "2119fc15a0b29b7d83d0197d302d210aa4e7b4a153120c384bd8dee28b3f993d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "30d0db697544d0d1bcc0a24e49160f4c94dd8ab5a6e9487d1ba566f5ebcc4b05"
    "ko"
  end
  language "nl" do
    sha256 "29aa970b24cf954613bad1cfe774d3deb1f8773b694532437bc542b779138daa"
    "nl"
  end
  language "pt-BR" do
    sha256 "8dbe29319a2b14ab2b9456501117c430d6abab101038fe46aca7bb24e76f957c"
    "pt-BR"
  end
  language "ru" do
    sha256 "f2f1b79ffcd402980f4e60c290197b409e094e81d5ff04807f12b5ca26fa5f55"
    "ru"
  end
  language "uk" do
    sha256 "4bde7734ce66156a96cde1dd326d7442429d8fceba59df672a8548fe52880719"
    "uk"
  end
  language "zh-TW" do
    sha256 "a2a4852566cfd352894611dc2d3efa85f6478b8dbe09e218cf9d9ee32d8488ff"
    "zh-TW"
  end
  language "zh" do
    sha256 "94551ceaa231c9c4ea925961857ee64301e93ba8ee931b0a8fd50adda7c71958"
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
