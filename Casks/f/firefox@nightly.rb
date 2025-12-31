cask "firefox@nightly" do
  version "148.0a1,2025-12-30-20-05-06"

  language "ca" do
    sha256 "2330c483b1a568c390789dc437deb1184bd8bc37a77f8984d4db67b308b01ccb"
    "ca"
  end
  language "cs" do
    sha256 "797535d9ed38a86e104e38939550ba8bbc8587560f5d24ba27cf088efca99549"
    "cs"
  end
  language "de" do
    sha256 "817b518b6d747dfe6b770bbede6ec9e45a34221cce59d625d26d2f13c8148431"
    "de"
  end
  language "en-CA" do
    sha256 "f8735e0ab2cc37ae6c8630277d6b7f75323062f453fa0717716c8ea81862dd75"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ea0df2b5c6b26fab7b7ac7a6a2672f9d5a90873b93dd79bfed74884cbca22247"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6beabe2d96d7968f0d17d08743203c8e2aab9df0b9cec916b212c1644e89538f"
    "en-US"
  end
  language "es" do
    sha256 "d88786f0468e9a4d75ec9483b0d4a661eb30951c871f854867804993e4f3142f"
    "es-ES"
  end
  language "fr" do
    sha256 "e6caa7a168f2b58af3961d227bb41d2ee570fde0a8b22df4f241a19968031871"
    "fr"
  end
  language "it" do
    sha256 "c82f471f50714a114f3115e175477c00737b83e318da2705fa8a5fb397fb0032"
    "it"
  end
  language "ja" do
    sha256 "e54b6de3560ffef4d4ef7f184a9bdf399f570090c0d739e70fd10cb05209795b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c3082366592b46d116ec4df008606043b3df9b2bc5016cc636ee1ef2dd02f5d0"
    "ko"
  end
  language "nl" do
    sha256 "0dca5b6e9b7cc257a0cbb2576b3a34e00b75255013c9ade1c2bb4802d54a55a3"
    "nl"
  end
  language "pt-BR" do
    sha256 "8ddd0b9af31259e37c143a7e53dad5eefe34314b8469bf0580a3d36b163c6326"
    "pt-BR"
  end
  language "ru" do
    sha256 "692e3abe2c5261581afb8c55ac432f89fa3629b0bf2176c324619c1c7e5abfef"
    "ru"
  end
  language "uk" do
    sha256 "6b362c9f30a3d49f77ef0d549d29395ea895f14d779528273c1abcabca700e37"
    "uk"
  end
  language "zh-TW" do
    sha256 "902326d22a3fc1b391a8714388e4fb0f6662e64061cb240012730f90788929c6"
    "zh-TW"
  end
  language "zh" do
    sha256 "5bcc18f90252958631afea94128b04750634cde4acd7c65dce8981f707d173c0"
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
