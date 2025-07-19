cask "firefox@nightly" do
  version "142.0a1,2025-07-19-09-41-31"

  language "ca" do
    sha256 "d7de122a43e9d9ce49486220ab6f96dcf4bcf8605978381d6239fa6ca183b414"
    "ca"
  end
  language "cs" do
    sha256 "4413774e12a1542a86b0ff3fabf7e93290915bcae8ad4d54d549771f77b68ee4"
    "cs"
  end
  language "de" do
    sha256 "098a520bb86fa75d1ea1e7a9c22a0a7f175080f30d701697edbb5fdca2189fda"
    "de"
  end
  language "en-CA" do
    sha256 "8666b45ee33f86f85507b6e8ba82f3430afe254ae0b196995d840a3e557aace2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f10e6d6c8ab1c5d4940ca404580ed6b3da597240219e212be0e309a8bcbfe053"
    "en-GB"
  end
  language "en", default: true do
    sha256 "410a54043f2de94ec315f5a720c83d53048548159413fe1eaf4cf62345a8d3e5"
    "en-US"
  end
  language "es" do
    sha256 "6bb8f9a3e813341a99455462a75bd928bd30854e6a759b2fbde5384297222f69"
    "es-ES"
  end
  language "fr" do
    sha256 "ec87aac1a36096cdf5a752230e9403746978d62d40c0f7475479d8feef44b384"
    "fr"
  end
  language "it" do
    sha256 "d5cbe54f220045132e9cf28c732784a0955b1e48787cf636d8c6575a6ff5a6ee"
    "it"
  end
  language "ja" do
    sha256 "f414c96305d6edbc4546b8bb45d587c6804a1741306527c2f2aba320b8c6ecf0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "330f7a9c5a6923215ac1cc4b28172a9dbb7e7974468938c6a8077ac98084972c"
    "ko"
  end
  language "nl" do
    sha256 "6aad26572e5f230835c8a5508a16058b1c7cb3b17658ce738e9d4e1e186d22f2"
    "nl"
  end
  language "pt-BR" do
    sha256 "f7ea1bc526a61249348ce6650fa29b12f991156b74395866d31cb0489809c32b"
    "pt-BR"
  end
  language "ru" do
    sha256 "0af494dcbeb5c8fa48b22501ef5352949a5d75b5b1c0e95bd52e17c7405bcb8e"
    "ru"
  end
  language "uk" do
    sha256 "a02f3f8e24b758236178e3f6288b3770e3646aea7cca3b0762940f2f3551873e"
    "uk"
  end
  language "zh-TW" do
    sha256 "ccda2ae5fe3b1e73bf8efdf42c65be42916ed2c3196c1a1d8abcf424f06cdf70"
    "zh-TW"
  end
  language "zh" do
    sha256 "319445fffaaf67ddf16c807dec7f13202c714a2022ffd2c634b1a0c181982a3d"
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
