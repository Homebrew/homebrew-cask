cask "firefox@nightly" do
  version "161.0a1,2026-10-24-21-50-18"

  language "ca" do
    sha256 "96a92ca0c55ce5f7c58ab2836f18705f26ffe90c1cc23e12137d6ab144c05c46"
    "ca"
  end
  language "cs" do
    sha256 "ee75995fdf7b2b404ef53cc2164e6850d9f33a6c0aa0dfcad2a79153c269093c"
    "cs"
  end
  language "de" do
    sha256 "3842f810f607c80ec46dcbf0602583d962bc3e5f2f54d39ccfd1480b9dd794fc"
    "de"
  end
  language "en-CA" do
    sha256 "a458f372e4c03d0beb092bc4f40c089b732682ee53193d429bceae4c8e920d93"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8110db98d65612fa714bad26a2477b43d3fdc44296ec202a8a2afcf20eade95f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f9a21fc8f602cb177145b9b4c0396c1b91a111313210b7f0c2e99192e45561e1"
    "en-US"
  end
  language "es" do
    sha256 "12156ab2b7ee0d5c461d8310fe9f46fc88b753fcfb9183d6c3012252e454a032"
    "es-ES"
  end
  language "fr" do
    sha256 "3605a55e7f357bf2370475ed1b079a26508549d73400c7d79ab26941eeae0831"
    "fr"
  end
  language "it" do
    sha256 "01d2bfa3de282efda1551e52dc9c608eba4a18568484158cef453da677e38d14"
    "it"
  end
  language "ja" do
    sha256 "fe5f550d050160a6f82bdd764ca699410b493ea1e74f8f2c3e0aee8d6d05a1af"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3dc5033ef5995ebb014195a56755413ffccdbab25a7636feda9f65f9ba02a950"
    "ko"
  end
  language "nl" do
    sha256 "d490440b9eece10c79f597efac816a368b3b816e85107ca3ee288c4ccd7c2af0"
    "nl"
  end
  language "pt-BR" do
    sha256 "9ed3b7a293f052ccad6174e2a56483ef01cd95316b2c1f62ffe040b6beb364f3"
    "pt-BR"
  end
  language "ru" do
    sha256 "3b8164868bfe8dbe214b561b4538c6de984ad2b11a534cea8c908fd8940b0c4c"
    "ru"
  end
  language "uk" do
    sha256 "b8a6ed654bfa8fda2676aebb91d7da381914ef6939847af42816ebd4413abc87"
    "uk"
  end
  language "zh-TW" do
    sha256 "9326611d776cc71bd6d217a252929fd1e66f2f3f4ff391820c2c4534e0b17836"
    "zh-TW"
  end
  language "zh" do
    sha256 "42f7ec095318cd49439a5cf12f5cbd80bee878134c908fb478b71c73fe890055"
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
