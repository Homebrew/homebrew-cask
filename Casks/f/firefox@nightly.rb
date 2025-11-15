cask "firefox@nightly" do
  version "147.0a1,2025-11-14-21-48-33"

  language "ca" do
    sha256 "590fc0c36b716151908d0b08a4517656fad8cd044ff6c224a4543f31a1996003"
    "ca"
  end
  language "cs" do
    sha256 "9ec3e6fc5487e145f86ef24aace4df507c418b8caba1db65b08f0adea512013d"
    "cs"
  end
  language "de" do
    sha256 "10b31e81e350c5b78740a89719ab880c61f214f9a461dcc8019307e9ba00119a"
    "de"
  end
  language "en-CA" do
    sha256 "d2042d352e9f798dfcf57e7e26568df879d7880909001f3b82b2cb89992a179a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ac6ca1a85a6e479b0a9fbbbf8db8c9f0055f3f3eb1e3c96c165d9026016c2d8f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7b96d4ce29cdbdf643e1b06c87b7947291b6da32dedd6836fff8044aecef957b"
    "en-US"
  end
  language "es" do
    sha256 "06f4dd270044660e94074b0561147499616d1a3c7fd80954513c20668d17d504"
    "es-ES"
  end
  language "fr" do
    sha256 "452209047565f014d4ea090fb7b0ba30d5a792054c4737d851c5ebd6d274e1a8"
    "fr"
  end
  language "it" do
    sha256 "93df3b868f60e183f0f3f46185c60681a736293df45416052c35f0daad0dcfb3"
    "it"
  end
  language "ja" do
    sha256 "d335184748301920196ba36b51395a41840743534ac1d1bd1b11f4bf3ccdbf32"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7c5d3eed2bb745cabb607f5049cfb81741763e6eb6a32594bf3d137e4c8af6d6"
    "ko"
  end
  language "nl" do
    sha256 "23b813105153d5f393a1879e31fe6f924ebde67340694f6460662059444cc87d"
    "nl"
  end
  language "pt-BR" do
    sha256 "47653f8bdcae3f823a6b0acac525d2249637c0c829b77fd5aa215b29399edd10"
    "pt-BR"
  end
  language "ru" do
    sha256 "b85236dda1b37d1f614e117e67a022c6cb817863b1bb8dbc2d1872e1ab5a5605"
    "ru"
  end
  language "uk" do
    sha256 "ed16c9cd3ddb1143e24b88d27b4efda1c6f56e5f001bc4a4ea0c9a99d0913e87"
    "uk"
  end
  language "zh-TW" do
    sha256 "36ee255ce818184584f3601160e7725355be7e8f4515e3eb3298f9baa4070657"
    "zh-TW"
  end
  language "zh" do
    sha256 "54b5618f71bf1f142ee2f04c0d11f101053921e799d30164e05e26ebe4b49924"
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
