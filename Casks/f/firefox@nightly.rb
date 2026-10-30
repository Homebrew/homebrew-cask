cask "firefox@nightly" do
  version "161.0a1,2026-10-30-09-04-06"

  language "ca" do
    sha256 "44e59a1dcc91b1eedfdc4302db41e252a6930ed1ab089a01d53ea851ced96280"
    "ca"
  end
  language "cs" do
    sha256 "90d933be0dcd1201918483c8e1982df16fd992c23645ebb1f47b2265c95e675c"
    "cs"
  end
  language "de" do
    sha256 "5f594050867a76d2b9e87af070bb396a207297a40ac24ac2ec400e734edfa4f4"
    "de"
  end
  language "en-CA" do
    sha256 "791e91e1cf5784a4ba5916ece468c74602f1168d02cebb8fdf42cc81fe0c0175"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a2cb579b54d4fa5845afaa520225ea5b41be6778b239f248263aea9326c35dfa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d72ea57a1bc27aa191cbe9f84cf4206f221d69e96cde9aac373ceb5e095bd23"
    "en-US"
  end
  language "es" do
    sha256 "d1ea5739ec1999a93ecb4928c3de9d13dd73b71a03a7649a4dd709db63c2f96d"
    "es-ES"
  end
  language "fr" do
    sha256 "b004b497b3cfc578200d12e91f84f13ea268ee741a2df4819f4c15859c6863ae"
    "fr"
  end
  language "it" do
    sha256 "928090121f35b2343401c3c7bb306b2252d9bfac829df18622b56e0c581b8a2a"
    "it"
  end
  language "ja" do
    sha256 "d69f86a52a404ff23ede6e799b3e341b3777d422055d16a0865d2c7e063ff6f4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "95d98e42dedd6217532e165ce06870eb656e18a849e837609af2b1aed99ef3ed"
    "ko"
  end
  language "nl" do
    sha256 "45cf499d626d93fc12d4985e9d57de3380ef45b755b1f004b13750360373d94b"
    "nl"
  end
  language "pt-BR" do
    sha256 "07ca522987430e81a91b44b56fa6c885f44c16c28205927b54c9a27f4322a6ce"
    "pt-BR"
  end
  language "ru" do
    sha256 "98d89c848623a6802c5ef508f547a8d9019da09ae526d0a8b58edda575ba285b"
    "ru"
  end
  language "uk" do
    sha256 "1ba9cf19b29b6d4a23655b5242bdae6c3d3c75b6c0f16241121ca33580fc6dd1"
    "uk"
  end
  language "zh-TW" do
    sha256 "c52400d3fd04fd4d561dd39b7ca27c33ee710f2a5c3d6481a4c428015325f952"
    "zh-TW"
  end
  language "zh" do
    sha256 "8057950d299049644e1d1f8fa7998026e9dfaaa20d459ac605de710576a2cd18"
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
