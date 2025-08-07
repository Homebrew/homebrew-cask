cask "firefox@nightly" do
  version "143.0a1,2025-08-07-09-38-34"

  language "ca" do
    sha256 "4cd044b49c4834b0b564e65e33b0024220c5ce3488b7a3c0f2a16c6d83462b5f"
    "ca"
  end
  language "cs" do
    sha256 "ea2c037a285e4df1b4df6bb761961ca99f6e476e516b51267b59d4cec88f25a0"
    "cs"
  end
  language "de" do
    sha256 "ea8a0e2249c32b981a2a409885f1ffdbadeff703a0d9b702fedf54335d4ceefb"
    "de"
  end
  language "en-CA" do
    sha256 "60b413cb50ac2a158d3002a7535e8897d8c97a727a7d16f4b4179ce53c14aa9e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6fdc6cddeb7b9514c6aa830c05f7d622ef93edc3d9f0141abfb71e35923bc06b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "639406785dcc9f04d6110ec2f5f251e0f12f787fea60df59016d62ae47442a8f"
    "en-US"
  end
  language "es" do
    sha256 "a935f6f4a5727570464f7d6efbb595e9a66cbbf0a1689ccb1c2aefb7f3390c94"
    "es-ES"
  end
  language "fr" do
    sha256 "222ce481a8093113222ec9c22ac3f3dd106593c107288a0f794a8f1c3dcbe327"
    "fr"
  end
  language "it" do
    sha256 "475f91fc16211c9fdbc3e9517f3cee28e880d9f41a228974aee34f0562a36189"
    "it"
  end
  language "ja" do
    sha256 "832757a2008989d1a3a9abf94a7430e0b4a1a30a9152bd0a1691748e01f87344"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "44d18fd14160f6c3fb7b639a84ff494fa83aabcbce7d71e793394419f676f11a"
    "ko"
  end
  language "nl" do
    sha256 "0fd80750c1ca5a9a42e3f5c25b05d7709cd32af602b28847642766fdb76e3424"
    "nl"
  end
  language "pt-BR" do
    sha256 "8f44c75731c7715c2413743961c2835f69713a01494d308eabdda1ef20e59f50"
    "pt-BR"
  end
  language "ru" do
    sha256 "eca334359f18700f4050ecf690862c3de309323b6767c2062237dd3b55ffe6af"
    "ru"
  end
  language "uk" do
    sha256 "e5b2bf18d0e5ca3ded0d5caee2154e8c938dbc0ab526f3fa015ea1413c865a12"
    "uk"
  end
  language "zh-TW" do
    sha256 "7cfbab4c372752a25e97fbfcb23d766288c4c24143a141ac94ef29ce9a6a657b"
    "zh-TW"
  end
  language "zh" do
    sha256 "40765a07be11b3eadab8721ff19133b6a10770ec45833db1678566868987f62c"
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
