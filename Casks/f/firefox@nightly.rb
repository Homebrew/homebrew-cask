cask "firefox@nightly" do
  version "140.0a1,2025-05-25-08-50-57"

  language "ca" do
    sha256 "7eb83c8a4144d231dda94af8784869ba687e5eb7eef1706df38d303bea5453cd"
    "ca"
  end
  language "cs" do
    sha256 "d201935700f7eec0eadffd791074468ccd2ba964c51599ba468ee227eeb41156"
    "cs"
  end
  language "de" do
    sha256 "d354fdbf7800cf75b15d54ad56486f151c5693eda2d79dd23b5c5c855457817c"
    "de"
  end
  language "en-CA" do
    sha256 "7d614c99dbdd4e42e846899f09ca4aea8aa04dbcddf46c80e323ff37e500311c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7bc4741f4ca74bec7f69a7cfabca550efe2fb065f5c6aa88d5ce81eb85065bc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dca9146a4b6f6435e00a453cc918235fbeb6859845778bf7df051d31f56a9069"
    "en-US"
  end
  language "es" do
    sha256 "770250cc284db8bfe5ced262204de7386b396170cc533116328e525c3640f5cd"
    "es-ES"
  end
  language "fr" do
    sha256 "11674fe744f9cbe2381876b988371e67cb83135eee1ff9e9b2115736e55e1534"
    "fr"
  end
  language "it" do
    sha256 "cea127bcb8637e2d561b37022bde9c8254bece574ff3625ef7e96e16b80d8271"
    "it"
  end
  language "ja" do
    sha256 "dd10cb2951c69b7038a9fe8e15b637741d4dacacd9cbf11c5d1e0ac47cc6549b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6bcbb75645e9402edd7e1cdebe987d8ff88c7f8219e15043527430eb6964fa54"
    "ko"
  end
  language "nl" do
    sha256 "475540f188991625b22d4d0add09656fbd8b2fa0ff47de8a47dd6f8bcea589cc"
    "nl"
  end
  language "pt-BR" do
    sha256 "7230b435f241ffa5d8cd24acf8c17236a434fde19085d917fb9e4c2cb197120c"
    "pt-BR"
  end
  language "ru" do
    sha256 "11cf8ecb0a51f5b79cddc4ffc5ad5aaf06bb00887863bd21e4e9eeb0882a2a9c"
    "ru"
  end
  language "uk" do
    sha256 "a304044fe140fd45feb6745bec7c05badfd45c26ce41cbc27635a21c58b1fbbf"
    "uk"
  end
  language "zh-TW" do
    sha256 "bbe5761324ee1f47e1d3985682a4c02104f5c61a1b2043de8e91a0812067a710"
    "zh-TW"
  end
  language "zh" do
    sha256 "5e9db9a1120b586b44b1704b2de8532aef7d0a17ba5576f64a2fcb2ce34c6e26"
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
