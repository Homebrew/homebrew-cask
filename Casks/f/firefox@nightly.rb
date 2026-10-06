cask "firefox@nightly" do
  version "159.0a1,2026-10-06-09-04-24"

  language "ca" do
    sha256 "4547bdc4d90fd347b29990a926d97f8cfab17ee17e5a7d761eaa8d7a02752f00"
    "ca"
  end
  language "cs" do
    sha256 "33a9c90810f4cba631a78598c998db5bdd189e5c9b164b0532ce10ff37dcc527"
    "cs"
  end
  language "de" do
    sha256 "512d83efa6013335f78664ed8cd181fe683221737bb5c59969a0e785f24e6ba2"
    "de"
  end
  language "en-CA" do
    sha256 "98f147b1e080125280fd8b8ceb5765d77726fcab42ec4205a347b4055df3068e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "221d1b9d22a9be045af4b969a7e6e08a75a9933e5a6791b6df1f3c9db468048e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f102be3eb802cff694af335cec4856686915dcdab678aa1d53b97db132a80df7"
    "en-US"
  end
  language "es" do
    sha256 "c4a34e254936609556231bfa96cd59675de96e85d48eaf375254e10119a443c6"
    "es-ES"
  end
  language "fr" do
    sha256 "6d90f0b135888ba57539d916052200dbe2c60ce212fc0e63f51846e1503c61a0"
    "fr"
  end
  language "it" do
    sha256 "c24e1a50efca78d89cf39f11fc006858e4ec2aeb8e079c3698112cc49f880083"
    "it"
  end
  language "ja" do
    sha256 "00f209b85645e4a0b3b91ce4e9e2a77fcc9e3a5a6da588d703c32c17307b01c7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "98c56bb86fa5a80300dc5cf7359e8ebe347d2a1bb141e63c61c7a0765496fd32"
    "ko"
  end
  language "nl" do
    sha256 "217e1b0bfb09c35ce492bf517ab7a5d845fb7bdf0b1288b089b3897d5a98ec8e"
    "nl"
  end
  language "pt-BR" do
    sha256 "badf1dc43edb76d3de7f420f5eec180ae170877b3d6e5b2758ab6ecb4ec57e06"
    "pt-BR"
  end
  language "ru" do
    sha256 "b84c194c126f2ee5ddfd88869ecac21ba9c42b62028704ecc16f27bc13dc334c"
    "ru"
  end
  language "uk" do
    sha256 "2a17360b6428c2fb468f6e29b1dd57841286b0ce40ebf78973d4950048007b66"
    "uk"
  end
  language "zh-TW" do
    sha256 "981687363bdffae66fd66ce6b5529905ebf74b18cd6f21ad4c375d3d01fb1ae9"
    "zh-TW"
  end
  language "zh" do
    sha256 "74409b22552eff5c7f6120e782bcda627488f05fcff9974dfe4b3168b819c592"
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
