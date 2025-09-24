cask "firefox@nightly" do
  version "145.0a1,2025-09-23-21-58-32"

  language "ca" do
    sha256 "45c802e64ab5f504639aec9505e18c838d99fc371f8abd649326a3b18b334844"
    "ca"
  end
  language "cs" do
    sha256 "d3922e965d97e7d3a963394367fbb11e35f38d4069c4f23683b1218c5147b22f"
    "cs"
  end
  language "de" do
    sha256 "22d5a3f760045e85aeffd51b1bfdb5d3e6e01eb749b3d443991523634a3cdcee"
    "de"
  end
  language "en-CA" do
    sha256 "ad7c4116b8a223e8ef9cc849c4ca72322109c5f460fb6114d9bdf7106ebb1e7c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6e745fe824dcd0aed204c94921e4f294f1ba676de2cf7c46988c32aec22b53cd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "647e4443e104f31886ab2e2fb4979a60b80d5e55130afeaed0193735aa9052ad"
    "en-US"
  end
  language "es" do
    sha256 "e730895add7f02b9448ea5caa3404f78b9cd983dccce5a017a40737796f8bca8"
    "es-ES"
  end
  language "fr" do
    sha256 "896a8663ba3c76cbdf53b0edf0bf224145d80c2b0e9afe5bd01cef0156cbb8c9"
    "fr"
  end
  language "it" do
    sha256 "e5afb290f507f71f9c373111d0a82adfad0797d2e4d3b660645e5c3b57bd56f3"
    "it"
  end
  language "ja" do
    sha256 "7379980b8d594fea064d9069d0dcac5cde9a8287b8388ded9ca5cc64f828c810"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "93fff2671ba7f5ddff9a3b451df129e3ece9584a53d419ad97e3233f2b571d2d"
    "ko"
  end
  language "nl" do
    sha256 "f5dbb6de0d326ef0b48fa73bb5262a1eefea578390a04f92f9118c9f446e84cd"
    "nl"
  end
  language "pt-BR" do
    sha256 "ebfdf0606b049a94f65fb2f882bdd7198b53dbcde1eed16fd272e06647dbcdae"
    "pt-BR"
  end
  language "ru" do
    sha256 "53bd9ec52d750abd29a06a762e6caf078487feb2c05c88f4df4cc8f133c51efe"
    "ru"
  end
  language "uk" do
    sha256 "74b6be994cb8b8b6a6a7f381389cd56d3bdc303f5e4e734f8bf128976fa9c367"
    "uk"
  end
  language "zh-TW" do
    sha256 "2ac1f6e187df64ae108f39f0e085a9d5d67980ff39151f8793e25d236e08e751"
    "zh-TW"
  end
  language "zh" do
    sha256 "961025aabb55d9ce4d114d07ae5ea33257038c6b531409b3b98ab18415e8edbb"
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
