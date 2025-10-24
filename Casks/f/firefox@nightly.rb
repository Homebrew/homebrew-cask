cask "firefox@nightly" do
  version "146.0a1,2025-10-24-09-45-38"

  language "ca" do
    sha256 "c46b6ecb6f7fe8ff5b100937e431f3383bcfd90f8695d269a4518681cbb7f15b"
    "ca"
  end
  language "cs" do
    sha256 "ea4ef309086f3090007a502b5e8ba5050555662b703e5ff48eb9d118f4f522ee"
    "cs"
  end
  language "de" do
    sha256 "72b904220c5ec1ee92af23ae33df78a395112046ff982ec66da447186eb21365"
    "de"
  end
  language "en-CA" do
    sha256 "655d0a5a3f3e995cd1002b936d4c8af2014dfa24092de1229ad3ae618f46b3a0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a852edd3ee63a618e63d3c7d72a3d84186d82fca0ec06e2d2f5add20a01e97a4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f90c1fd044b74ca387edde1eb0dd11408f1415a26bbc746e608d006608a0439d"
    "en-US"
  end
  language "es" do
    sha256 "32e73d084c3ea58d600ce2973b6aaab3b898dfe015b3b65b1a040b68af03d300"
    "es-ES"
  end
  language "fr" do
    sha256 "1141565b11efeed3a81b1ca43f9302327defc98330dfa9283f6d4d7535e6f1e5"
    "fr"
  end
  language "it" do
    sha256 "f76e6ce948250b80d4fc1054f5a058a91a916ca727b3fb0c54b4432158e5d8c2"
    "it"
  end
  language "ja" do
    sha256 "a3d915f68eaa3216feddb12aaf449ee627f0d31f64f8f8eb028b2525a829cc0f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9a66beb65fd1defcd30f1b56eb9ea917d432f2144da630802d5b31c802f2de56"
    "ko"
  end
  language "nl" do
    sha256 "92dcb6a1b78133e5e81e4400fc573b37b9f871e4fb8f9bb42156f4b303ace67d"
    "nl"
  end
  language "pt-BR" do
    sha256 "5962b1addbf42fa155c07c0846525a334cdcbc4f97c52c7a2abfab3523e25f7f"
    "pt-BR"
  end
  language "ru" do
    sha256 "c6a4c7e295080976cac5619ac7a16614295c14c18b986757ea4a74e65ac68839"
    "ru"
  end
  language "uk" do
    sha256 "66fd195976e81f2338480c1ad4df4d9e2cb22ff3d844024bcf21eab25969cb7e"
    "uk"
  end
  language "zh-TW" do
    sha256 "92b54e2d7d0ddfa7b0d1ab966feede2105a548b87369ec07120e4b12119d3657"
    "zh-TW"
  end
  language "zh" do
    sha256 "01a3e04331074316013689f07f852dfc45967be35fc64eb18e6e471eae262bc5"
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
