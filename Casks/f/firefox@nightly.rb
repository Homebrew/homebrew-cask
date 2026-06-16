cask "firefox@nightly" do
  version "154.0a1,2026-06-15-21-51-40"

  language "ca" do
    sha256 "be3e28287b343333757e91a292c0705ed5d8e72212c8fe8426881d6cc8cef180"
    "ca"
  end
  language "cs" do
    sha256 "d9de44f6493d34dcccb6b95c5f7f76c302e2427f7d023fe3e0961eb66f0d6718"
    "cs"
  end
  language "de" do
    sha256 "54f71d435caa94d3e70e42de4730bdc13733362eafb0edd647e6ea1877c3b5b7"
    "de"
  end
  language "en-CA" do
    sha256 "2aea27be3ee96b3e0e25c8c4660d61f5182ef78c631d61f03d9c090a75fc2999"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4175b0a4e67a580320ddcff2b96ca484305c32b44e35206780f2e370c36576fc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "10284c7be3ccd455d5346138a191e122878bfbc753c727dee33e7e7259ef9f70"
    "en-US"
  end
  language "es" do
    sha256 "fe09076261517a4d4927c4e7a981d87c1673c0f0c0caacc466440340c97b92e7"
    "es-ES"
  end
  language "fr" do
    sha256 "a916bfb26d93063f7b9f55e5cc248a844ef9f3306c0c0735cff11cf6f71d2ffc"
    "fr"
  end
  language "it" do
    sha256 "143db3c70d56fc2005833d7714ab26e8634f9ae33dc2d7a038dcba5c052a8362"
    "it"
  end
  language "ja" do
    sha256 "0668a47aa71e359eef3879604e54125d36a8d24fd753f965e559e2fd6a76c411"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9f007330ef1dc1e07bc65e776e171c9957f5bbc8b71de44c6364d3d015215592"
    "ko"
  end
  language "nl" do
    sha256 "bc8dc4c324c73983b0e801cc05c2ab0f3a9c6468dccc7dfa44c5306f28866782"
    "nl"
  end
  language "pt-BR" do
    sha256 "01b82ff09de10320c72365124e88db1b0be021387a04b2b62ab9c7e28ee447ea"
    "pt-BR"
  end
  language "ru" do
    sha256 "77585cb00800c84b03c17d2b37bd5d047b613a04b79ed0edb0306c6dcab02391"
    "ru"
  end
  language "uk" do
    sha256 "9c5a89d1486795eff8dd80db819afe6122e28de0a561f4522e51cf6496734ffe"
    "uk"
  end
  language "zh-TW" do
    sha256 "fcbc37d6118fc77bc1f849a662417e344b4f64cb8a725159642eb8c00e1951f9"
    "zh-TW"
  end
  language "zh" do
    sha256 "c8075202e9c423c56bea8880bceeb616a70ca95b1ed158b5581185b67c08861e"
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
