cask "firefox@nightly" do
  version "149.0a1,2026-01-13-09-33-56"

  language "ca" do
    sha256 "f108de0479de65e4c79388734b0b27d435c79eec7f8bb967e5db2abc5292da2d"
    "ca"
  end
  language "cs" do
    sha256 "5b9383e05c64bd46b7b339c8b1be7007aa1929dfd35a5349e389a6d6bbfe6a40"
    "cs"
  end
  language "de" do
    sha256 "da53b7746e156bdaf09c6a034959169cca5281351cc777d251869368a20639bd"
    "de"
  end
  language "en-CA" do
    sha256 "5b1729d9250abb5ff5f4d477060b81a99b761aa8e0df9138ce1ce81ed26a2531"
    "en-CA"
  end
  language "en-GB" do
    sha256 "00de98c2fde41d944302e19216ab0088fa4c9f5dd4602172d756aac7b90f3893"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bbcc83ed6b4f6023d10b5bc4ba5fd2868b116bc2f3e5f5bfd4350b1962ed9f5f"
    "en-US"
  end
  language "es" do
    sha256 "6c38d1fb014939f7fe8ec5e7065da04d75a0a26f28433020adf0e911350f0e41"
    "es-ES"
  end
  language "fr" do
    sha256 "ce9f8cabf095f9eceb93611557f12a68fbbfdb0a226a68f015ad77cef0b3dd4d"
    "fr"
  end
  language "it" do
    sha256 "2b0ecac38efc8957d40f8f2f5bc3924757cc943047352875a3f5e5d058bdb052"
    "it"
  end
  language "ja" do
    sha256 "d7aed1f6f63138a676cc190d67a02e96a641a3c9c2ecc1c8a1a211829d0a544b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a8f2664475ca5491ff3d312af8d06e14d2999377aa2b9d376334a5e5be33dd3d"
    "ko"
  end
  language "nl" do
    sha256 "f2d6aea653ff3f73d3c805b95b2f1cab9d5dd7783b5bdd3a833fffa39ecc9558"
    "nl"
  end
  language "pt-BR" do
    sha256 "665b8f87b707538a8efea1bfcaaa53c61300913fd338117cffb6f56d3c8fb301"
    "pt-BR"
  end
  language "ru" do
    sha256 "927d8dc91e17ab29d47175bca6227a42c8ab95a123f7f979af84e945baaa3068"
    "ru"
  end
  language "uk" do
    sha256 "3b5d4687d347a5b255c5caac5b31a6a2eb6fe77aca8ce10bf2048ae5f775e880"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa75fbb6e0a10fb3dd2a60b7b937e6b74840223ce9b54d2a007c8310e5f1f62c"
    "zh-TW"
  end
  language "zh" do
    sha256 "88014ff34136a0db7cd2ce074f7215a33adf0a9d4be400aaa94e4c5a8f36c479"
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
