cask "firefox@nightly" do
  version "151.0a1,2026-04-09-21-04-23"

  language "ca" do
    sha256 "55454de46a93210eac7471c43cf849f3657c6aba865345e3c2546864909485ee"
    "ca"
  end
  language "cs" do
    sha256 "5f65183f94318f7eee3f3983fd70e379f1341166c68c3d09ba0900422851f141"
    "cs"
  end
  language "de" do
    sha256 "5125316809b66ea4ef85ca2a5d81a89e6cd776c22b915082a885b83bf48f2cbd"
    "de"
  end
  language "en-CA" do
    sha256 "b95b279b3ec957695cc247321a46ead102b5d99e255a4747b0f4b220594c5c06"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e6a2c14ca79e0cf2b4ba8b4d466163868d2eba6653ab1e18eae9e36a36faa932"
    "en-GB"
  end
  language "en", default: true do
    sha256 "721b44b9d56323cebfa3823436824cd3bc0c7d0b4cf26b954e2a957df0ad3759"
    "en-US"
  end
  language "es" do
    sha256 "d46a6df63324d05818a3d79fd506f5d5eb99decc552397e044d39ef0041c263c"
    "es-ES"
  end
  language "fr" do
    sha256 "23508a91e504e3b412ffdba5c8b112d00b89d2777144cd440aa1a56538e1cd34"
    "fr"
  end
  language "it" do
    sha256 "2872233ce63a237a539fd4bf11e27775defa3d3ac7afc6224999317bdeda5a55"
    "it"
  end
  language "ja" do
    sha256 "92c03c3fd2cdc5cf1620d7de03ac440e5bdbc012b849da3ce8d5de264ffb0567"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "17eaaa33fc3b44a4b8dfe377ff30a4f84e07d57b0dace491fad9cc42c3fda50f"
    "ko"
  end
  language "nl" do
    sha256 "ccfd7644fab8811612b0e4512958475f77db4f351f8e697c2b008f919de7fbf8"
    "nl"
  end
  language "pt-BR" do
    sha256 "51f026f16119225bacb3633ce16841f8fea7a607c5f8cb798a273ce9e6e3da29"
    "pt-BR"
  end
  language "ru" do
    sha256 "cf4ba3823436610e8810655c2cb32f192bbdc106331a54627de658bfbaf02917"
    "ru"
  end
  language "uk" do
    sha256 "9cf6eb2bd97a7a9db1a7f2035af6c960e65c009a5b7ec8263f21c128409ca0dc"
    "uk"
  end
  language "zh-TW" do
    sha256 "2233bbca5afa752ea5176287ac7f3aea927906647766d864a4afaa51e9932901"
    "zh-TW"
  end
  language "zh" do
    sha256 "f1ff62bda7982e013cf9194514ff7527e8412d5eecf0f00c85302eef72c482e3"
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
