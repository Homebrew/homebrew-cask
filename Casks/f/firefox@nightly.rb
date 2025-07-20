cask "firefox@nightly" do
  version "142.0a1,2025-07-20-09-01-42"

  language "ca" do
    sha256 "e43e9864cb8668aabb59a651771c88e618ee14f7895b2d082d02fbcbf7c15d28"
    "ca"
  end
  language "cs" do
    sha256 "343e3fa280ff6d69d9484410e056fb37c9cb38900e67a7cbba60e45b11f37a51"
    "cs"
  end
  language "de" do
    sha256 "7affd27f4a10a62d898d9103f14c45268f20565a7674a24d6209adebe2ec1503"
    "de"
  end
  language "en-CA" do
    sha256 "d1a28dd198627f55089f747c07be84e83cbfa680879429d445e84b55d0ec445b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c8a49be4a44f443b7f77ab963aa3adff7b2ae0c4eb782de9598802193c39215c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6f3a0f43a3cacb54f36f9177fab4c6bda9334fa0a1cb42c6a75239ba421f0924"
    "en-US"
  end
  language "es" do
    sha256 "65191f107db03b3775c5a3bb208cd15ea613b27c133be569a94687df1d51e128"
    "es-ES"
  end
  language "fr" do
    sha256 "81129f493ea5f3f73673ac0c3dbffe312f7abb149d436442bc4a6ba8aaabb34f"
    "fr"
  end
  language "it" do
    sha256 "3fb366ad86f67024ebaf457f4b62395dbc791fd7ba30dd0736b228dad03e682b"
    "it"
  end
  language "ja" do
    sha256 "2d1080450206ac290284390005924c99d387662c575b3f5ab926fd7b26b4aa27"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e2278e4bb30aaf770443e469eafc6fe903155792ea3ec1b56adc74bc5be97856"
    "ko"
  end
  language "nl" do
    sha256 "b6b725c99d7ba7a5234e496d3285b62bc9f4c7934d2c143ee73bcf580b320fc1"
    "nl"
  end
  language "pt-BR" do
    sha256 "2281b361c556d0cc32593a91d3d021b7a9d16e021d05c38069e90837e437f3ae"
    "pt-BR"
  end
  language "ru" do
    sha256 "2c53c3eec66a97c9b39e6a807de3e87f27ac97b7977db5e45e017db56ff56b43"
    "ru"
  end
  language "uk" do
    sha256 "1cda6bda4ea78c1a95e12c300b57b6562039329495ef6f82741c2e3b2e7fdb52"
    "uk"
  end
  language "zh-TW" do
    sha256 "92ebd446ea6797721b755ff85b2cd727bea27d55b5b45dd5ada8d1256da222bd"
    "zh-TW"
  end
  language "zh" do
    sha256 "b2b630d52f4f9a279f717fb3cc5c26fc86068378150349a9d8915ed58d473a13"
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
