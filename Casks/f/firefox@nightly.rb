cask "firefox@nightly" do
  version "143.0a1,2025-08-02-21-04-37"

  language "ca" do
    sha256 "db3be72aa56c2618985363a4452587b35cfc18f4a7d96ab4ddb678084849b6fa"
    "ca"
  end
  language "cs" do
    sha256 "ffd3d2f8721869906935d4cf733c4e0513c669fcbe019febe7b59bfe91bf7c25"
    "cs"
  end
  language "de" do
    sha256 "f99aae01bda1fea033fe72e04e68151e20528480eae280973ff575b9b3229836"
    "de"
  end
  language "en-CA" do
    sha256 "f0ccb0ff5759e5a0ea5d782302f182e54624715512d6a956ba000f589a2cf443"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0bd09e38d42e869fdcd3301893988f81a567982c99a18550307c75620343f096"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5cc7b384eed5acc94a9ddc03ddb23ee092e41d291862c3afc24ac3fc71bdbb11"
    "en-US"
  end
  language "es" do
    sha256 "c6787a3c3ec098b34480bb3a31ffee21d61b36289445d3e89fc7a839b908588d"
    "es-ES"
  end
  language "fr" do
    sha256 "0752d257c8d56b985a71ecd8a867c9e0f481cf883b9d50828f9f8093ce40ca43"
    "fr"
  end
  language "it" do
    sha256 "9ebc142ab3b4213ce8f3f69f2d3395952aeb82b94519b30ae920db07ced983cb"
    "it"
  end
  language "ja" do
    sha256 "c73269e1360e53c7521d31c628b8764707ab32c0c0caf9389b8768b099ba3975"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2b1d4b60d064578043d4157b6f1ce8dd2b292d63a68b6fca7b22f8e50a5df6e4"
    "ko"
  end
  language "nl" do
    sha256 "a6930b54360aa0ae5378176d493d9da68c8828bb5351c4201c16e05775be4654"
    "nl"
  end
  language "pt-BR" do
    sha256 "c074259a8128363d673c08ec05cc1da257f28ddc9b47911c0fed581ea9b50857"
    "pt-BR"
  end
  language "ru" do
    sha256 "f73220c555f52f97face921466f9681606c1992afd42206e90c06feefca40ce3"
    "ru"
  end
  language "uk" do
    sha256 "d5ca8a3b25d1a7c1cdd07f758d1076b8048976df7efb89c6215fa90937399b0e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4d6f8bf1e60acf7fee44d696e865d6c97579f624886e1a7a95f3477749a5417a"
    "zh-TW"
  end
  language "zh" do
    sha256 "aafde467ae9fcc8ee3db0405b6e7ebc3bc6cd659f542931a45f9cac790a2b87a"
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
