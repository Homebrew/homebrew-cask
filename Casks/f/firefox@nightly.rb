cask "firefox@nightly" do
  version "153.0a1,2026-06-14-09-31-00"

  language "ca" do
    sha256 "3b47655449c5637de21df64527be2ff494a74b698c9bc0911d6a3d541f04d753"
    "ca"
  end
  language "cs" do
    sha256 "28b4cfd9591fb26955ee1493e3d34bbde596f3ab499d3569a52d8d5deff94484"
    "cs"
  end
  language "de" do
    sha256 "c97cd31f71e0cb254e1f13d5ac6f915695aed56412933d412125156899b7fc54"
    "de"
  end
  language "en-CA" do
    sha256 "6200a457a71d95168434c5aa8fe22f8ee8eb9a8944a299f55dc42783c42826b0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "53f88ae82613c85f38fcab330bf0e21d263cb0f52b2f437773e8158a32a8606a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bb752b3b8c2bee3f4a9e4077792c570fb1d0d0c8ec7fd26d15cb83d4e01cdd0b"
    "en-US"
  end
  language "es" do
    sha256 "27c566fc92312182376081a3c27aa52cde28f23ef6563379b56f0ff37f1e22ef"
    "es-ES"
  end
  language "fr" do
    sha256 "7621212e8d4a0476bf4b0b0267e49f74d5918bc6936d927472379c66e63b3901"
    "fr"
  end
  language "it" do
    sha256 "845d10228f02a43accbe160fb9848bf7bb95ba8074428d37614c6353a1521eac"
    "it"
  end
  language "ja" do
    sha256 "6680a1e3920439ecffae7187bed724d2efc235dd824bd8646211a82a4ff9ae10"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c246ae03a456e793e2ad1980f7f87f926b096c3ddcdca27d4b5aa169f2818a00"
    "ko"
  end
  language "nl" do
    sha256 "c2b879dfa2fb09ad83dcdfada0eb4056e46edae7478f2a4f53ff8a2854a14b11"
    "nl"
  end
  language "pt-BR" do
    sha256 "3a96fd191562d0b3ffda63d4d060a2fdf70a4db19f32632ff4f9a9d53fb18af6"
    "pt-BR"
  end
  language "ru" do
    sha256 "302a6fa09dd12756612873398a3108d23e135dfb1a265f683fb655ccd7e6437b"
    "ru"
  end
  language "uk" do
    sha256 "5ad9a861e9c14b854959272e399bf279ce976d3ee211ca6446a3904ef8f77afc"
    "uk"
  end
  language "zh-TW" do
    sha256 "cac1bba07335b346bc97797d8fdf45e07bc55990c55942270fc16382b1e013da"
    "zh-TW"
  end
  language "zh" do
    sha256 "b8522f5cd32082d4696eef43003240f38ce6cfa6c12844821883c7800e69d6af"
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
