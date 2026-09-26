cask "firefox@nightly" do
  version "159.0a1,2026-09-25-21-48-43"

  language "ca" do
    sha256 "04799bf4e9681d5abe0a34159f089484635c7e6b7378bf0c0bcb1f22e41e326a"
    "ca"
  end
  language "cs" do
    sha256 "81e67dd48966129116e6433922a673722288c93e49927dfeaeebff9492a912da"
    "cs"
  end
  language "de" do
    sha256 "d058a1892cd591ae2577f74393084f9d5f68d003046b84ac97a9f5b365732982"
    "de"
  end
  language "en-CA" do
    sha256 "bc08da79b603116999fd83903110fcd736c118437789cc3ad9c3c542bf3a6e2b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0904b6e92c05e1018049504771daae985a63255e908aebbd8471e26bc3a6fa00"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2465f00e5d3e1889c1a9450068beccab95a11a7a626b60a9dc3906090c59588d"
    "en-US"
  end
  language "es" do
    sha256 "e1be637e0d73684ce6ad690c26035ddeb390c6da044d2e0c97c7309ef3e7454a"
    "es-ES"
  end
  language "fr" do
    sha256 "695c62af787752ec1a9919d2300d7e5dccb7b0492e5fefd827320f5f4b2ab3f0"
    "fr"
  end
  language "it" do
    sha256 "db9d055088df4820eae3b34263e967ad1322074baa7653a826ebda8e3a219894"
    "it"
  end
  language "ja" do
    sha256 "2712b36827d38b38d9e48cb64b9e9f3cf1874674990d3c61c4e74cb48f664248"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c4efef91903e6dee2733cbf8bc8077d7ae49b223223072ba6fdf94023d7bc13b"
    "ko"
  end
  language "nl" do
    sha256 "09672b0a4ae2440c7f47014bd0f018c0f0929489160c1e687bd4f3dd67b4d863"
    "nl"
  end
  language "pt-BR" do
    sha256 "be3bd652685b355fdf15431e9d2959c9808e3209cecb49e082b390e10f2476b6"
    "pt-BR"
  end
  language "ru" do
    sha256 "3f66ca264471592b754f65666401ce39c8bb0728feebec612db6774a2be80655"
    "ru"
  end
  language "uk" do
    sha256 "8a0353268f8f3c1ada6110a31324fc946b5d0765125d175d45dffbd2c3ca40c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "c6e96cb712c5f69210a7c06623a08e25061e7da39846d9a737dc5b1e6b1a86d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "07b7309e80e22e000e7c04405d8f774f4c1828e04e9ea4efeac05632c0936e42"
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
