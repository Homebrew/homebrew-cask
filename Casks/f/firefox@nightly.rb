cask "firefox@nightly" do
  version "144.0a1,2025-08-23-13-37-03"

  language "ca" do
    sha256 "d9810c1c0b20ab4daf5cc6ca67604ffa1581b84fb031a95bf49ecc953c60e9b8"
    "ca"
  end
  language "cs" do
    sha256 "d5af4bcd484fdd07c5f020a57a2e636365fb76891eed1b355e3990e9cf1387ec"
    "cs"
  end
  language "de" do
    sha256 "788d52b059c4a9b7e7e3f9ce01e199bd7847ce3b8e68b6ea5122124b3aa29d74"
    "de"
  end
  language "en-CA" do
    sha256 "1ba26b874a87f91a67d158cce4856b85ebe20ea27941a209f65ecb7bf9308ecd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "61094824aa9f5cfc458233fccc4bf5083ea2aa5f3bf741000dd080a4891b6b92"
    "en-GB"
  end
  language "en", default: true do
    sha256 "94a408679c14aa9f6a8ee6db85f5b5df83d7abcc27e759c5c6fe9ff1a048b33a"
    "en-US"
  end
  language "es" do
    sha256 "d7363e64057936b26d47a5584303072cda44beb5a1314b316a045ff78f8c6cf3"
    "es-ES"
  end
  language "fr" do
    sha256 "2697bb19b31338f68dce8c251883bff7997d499d03297f3df5b0b9281274b2b4"
    "fr"
  end
  language "it" do
    sha256 "528da5d8322f52ae9c39e70ead2811cf609d9a57e870fe9fbf35bd8908fcaa9e"
    "it"
  end
  language "ja" do
    sha256 "06992b099e05d8c2d03db550c7ac093fdc4736c3f23f23115add6a6ad6661b36"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2511ff0991ce449cf9921ab706b7b3112bbecbe4d24c4ab3c297c29f2bc18acc"
    "ko"
  end
  language "nl" do
    sha256 "c1ac80a58921433572d9f43d3f2fea4cb0be51187365b12afec57335859516a0"
    "nl"
  end
  language "pt-BR" do
    sha256 "5d1111cf66351e76cb545fa67dc0ea74d1f97b5384c157bf226b1cf5ee4f8926"
    "pt-BR"
  end
  language "ru" do
    sha256 "95e299cbdcb7f89d1b4bd85b8bd9e5d5a983f13fd4404fab24d9f5f8988a0169"
    "ru"
  end
  language "uk" do
    sha256 "81c071150b4611f618cacae635bb590e1e4e559938801e58a443746678d6a66c"
    "uk"
  end
  language "zh-TW" do
    sha256 "e2debffb28b61a6b51ae7413e25c4fa31110a070c0be114614739ce4b1546eb6"
    "zh-TW"
  end
  language "zh" do
    sha256 "840d87beec1e548895ff218dd02baaff7030c9058109f79eea6b217c8f0a5d61"
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
