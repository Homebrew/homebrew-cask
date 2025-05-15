cask "firefox@nightly" do
  version "140.0a1,2025-05-15-08-44-40"

  language "ca" do
    sha256 "94051f764a3e2f10fe33abc87accf53a0e41adea89658d4de20c3bd6badcf8ef"
    "ca"
  end
  language "cs" do
    sha256 "8e747a28655d05f148bad9239fc283e7dfe1ec5248fe25aac901066b3f14d0a1"
    "cs"
  end
  language "de" do
    sha256 "a7f0b20ab116369ae02325693afbe9ab96263f661eb2668bf7b40f8192bbeb41"
    "de"
  end
  language "en-CA" do
    sha256 "4e782bee57d0cd564d1b6f1f765c71e315c4fc3f5c0684d62a86cdf64b046ada"
    "en-CA"
  end
  language "en-GB" do
    sha256 "83b4d806c7128e340ae938e5307accda852919e5735ebf3a8ed08d3e784479cd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d68ad12c854cc7e2be552d5c853e4c2c95e01afc4f25f88d17c83083be91622c"
    "en-US"
  end
  language "es" do
    sha256 "05f826c56f2fbc2c7c0865b8712d26d1b8786ac00391921078cda6b6cd6e17e1"
    "es-ES"
  end
  language "fr" do
    sha256 "fbb357b990e94498ca6b2f6da3978335949436f4a285c90d6c86c5836ad97307"
    "fr"
  end
  language "it" do
    sha256 "3c2d61e49398343506b50f36ae83f101f6f076313d98f2fda6be1d81246140cf"
    "it"
  end
  language "ja" do
    sha256 "796b16f8504e8cbeabeacacc7be4daccca991e08f43d5dc7040862190f9626b9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a891d647b9a891749177551b1ce84fd57a20723793d2fda7f8b64f66a562596a"
    "ko"
  end
  language "nl" do
    sha256 "26ac5af43435511354a2503364940a97cc22f8638d05d150814305e6b3ff8005"
    "nl"
  end
  language "pt-BR" do
    sha256 "2774b1c6fe5c5b0d3a1cfabe975845f192b7465f7e1a321af41dccf244d37709"
    "pt-BR"
  end
  language "ru" do
    sha256 "76909faeb438c0f487fb6793e3458f69f7cae0c8d4257f54b8427801a466e1c8"
    "ru"
  end
  language "uk" do
    sha256 "0b56234ff74999f0a08936f8175929da5b59525570de348e050583b3214d078f"
    "uk"
  end
  language "zh-TW" do
    sha256 "cdb7974183fe22b3d1af1537f3fd8f0bb84261907beecb6741331944c12ae502"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd2cada8c1a561ef004c6acfac4cee40ed3c47d530de23a479e5033cb620eb1e"
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
