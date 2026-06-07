cask "firefox@nightly" do
  version "153.0a1,2026-06-07-08-34-00"

  language "ca" do
    sha256 "495690c88adb8f2e594e35fadf31e021c02f1f752d2127806d465fe5a8009633"
    "ca"
  end
  language "cs" do
    sha256 "7c6bf19ff9f0eda7c9c3d649a5c66525b8269147ddb3a1b65645058fe567d571"
    "cs"
  end
  language "de" do
    sha256 "6f5338da0f3056d7af2929467f39d420a9ebf616befe1c7eee8dc95a203b05e6"
    "de"
  end
  language "en-CA" do
    sha256 "6320245806c50f5619296efe30ce272a3dd6ebb6d3cc97b28654bed34e1eb9a7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d8795a8d5be570cae0efc8672f8c34f89c0f1cdf9e30ffbff714e24c27c1d105"
    "en-GB"
  end
  language "en", default: true do
    sha256 "131a2ca3292ea88963a600f78413da511e6d303a130703cebd7bda3387007699"
    "en-US"
  end
  language "es" do
    sha256 "2b82396eee830a49ad1f1e460f4837500a935a4dd3ea9126c67587c919fcc55d"
    "es-ES"
  end
  language "fr" do
    sha256 "b3617184c99bbca9974788d26478fcbee128a33c55974ae5c262288b0932d811"
    "fr"
  end
  language "it" do
    sha256 "c1819c58dc0c3d5006ad2b10e398df955e344fe9d47d24add574eb8404447b73"
    "it"
  end
  language "ja" do
    sha256 "4003e15ecaf9178453a5a5361d72ce53f7b9c684d01ddc18f5757a78d08abf38"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2a02984d1334cd46c4fb6adbbd286a8143fa39283633dd318f9a360f50ed7eac"
    "ko"
  end
  language "nl" do
    sha256 "6899a119dd4af3ccc57c63439a0181fe9805f5afbb4ede32e10de2f9c13f4cc8"
    "nl"
  end
  language "pt-BR" do
    sha256 "be273d0168988a651b75b45d6f9fdee4d45134c3b642701c1b88b98c4ca3ce7a"
    "pt-BR"
  end
  language "ru" do
    sha256 "251c9b2e4d6fb147ce2b2819213334f4fe8b1ff6d2733fc8b6f564cb5be21e58"
    "ru"
  end
  language "uk" do
    sha256 "7e26dc9d022c514219bda71f55ea00c331a6f719e11dbadbe232889e3a3efa74"
    "uk"
  end
  language "zh-TW" do
    sha256 "dc0e7b706f3ae863156390008ecbc213fdbce03b29e058822462355510299a07"
    "zh-TW"
  end
  language "zh" do
    sha256 "aaf011143f676947ce0b871f6a1fb2feefaff8173bea7f2d5df8d0e7131a36be"
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
