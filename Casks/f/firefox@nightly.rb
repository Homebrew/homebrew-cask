cask "firefox@nightly" do
  version "144.0a1,2025-09-02-21-06-51"

  language "ca" do
    sha256 "0e086cef149f17b0ec785ca870be9b8584fa1701845ad9d7054355d223af74ad"
    "ca"
  end
  language "cs" do
    sha256 "f75dee04fc9a041bd37017828b6d12e1432c6d948825b6e4698e770f43edd533"
    "cs"
  end
  language "de" do
    sha256 "587d92e15e42601dbc4166d13d8822c6f2866db99a76c0d4359e86b0951e7c10"
    "de"
  end
  language "en-CA" do
    sha256 "eac111a37f0360b5ded831faf4ce17e2c556dd2dc3bce589d64ee7b19e4cc362"
    "en-CA"
  end
  language "en-GB" do
    sha256 "72368dc7e6cb3095989d873d62952bd6c38ef3c38fb07563aeded7b83737a4fe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d40537d5d8cbe4f964f4afc541017760aa3dbbbaf6a62508d9991c39815ba40"
    "en-US"
  end
  language "es" do
    sha256 "96f5a925965d16c5393793c757972761c21dc50dfa1b468dfdc998d03073dfa8"
    "es-ES"
  end
  language "fr" do
    sha256 "2c01194d83385c9b36bb729040b23504fda7597e484f73b40df9d0935c48d76c"
    "fr"
  end
  language "it" do
    sha256 "b2e72a13328d10c68310839f3042bcf804862141f19760aa8c44ab81979bcbd0"
    "it"
  end
  language "ja" do
    sha256 "d4ce9cb1058ea655310de6f88811b3f6c714891611e51742f34755c41ccc53ce"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2dbef554e12c6d01fab5e4bf75a966662fee1be3b87b7685e960ad7614bc360b"
    "ko"
  end
  language "nl" do
    sha256 "1ab9370c938d24527040176fee6493514127c7c5442a54017e339ee1777f89d9"
    "nl"
  end
  language "pt-BR" do
    sha256 "e8d5e3eea1e01ecf92a139702b7c5f302fba22f83a041dd82f4068d620a46910"
    "pt-BR"
  end
  language "ru" do
    sha256 "183a3b414d0372ffcd8daa6a1bfc8f42d21792deada52231130bd41db9c3e1c3"
    "ru"
  end
  language "uk" do
    sha256 "f17b526dd7d3a1f015b44bd9481ccbd34dbe1fc5c1aea04bec5c9c03687ed0cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "b10f894d9c7dc0dce6d263121a984596bcb674d31bdda8e8841daf2ceb085b00"
    "zh-TW"
  end
  language "zh" do
    sha256 "e613a41621df469a34027272bd0add848d1b12de28598b79d3908f4a9d227bd8"
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
