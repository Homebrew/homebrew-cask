cask "firefox@nightly" do
  version "141.0a1,2025-06-21-21-13-12"

  language "ca" do
    sha256 "3cdd293f34c18cd18da4e0acf2fd513a696258e805056ee0f47d3ce47b99467e"
    "ca"
  end
  language "cs" do
    sha256 "983a5a46cdb4b14bab1eef5ccc592479691224ce2ea9eb06bdd6c23fc23b5815"
    "cs"
  end
  language "de" do
    sha256 "976e5f756cccb2ba46b513ec1e5593eb2c8c0b6024aa883b57a91ce4321e74c7"
    "de"
  end
  language "en-CA" do
    sha256 "a4c24e6d9c9ac44653344d6eb77798154ac828a33854656ca386dc702ebc0ca0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "264c55d533041363b1c533fbf1d83d2dd7447e39b36db2f9dc9c770ccc0157be"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1e5a1e9046fed114600c4726d9f1042dcf1d10dfac7155f81f433e10f59d40a5"
    "en-US"
  end
  language "es" do
    sha256 "e11ebd0b232d8f0b34a22b3e31153c1a75b2264b80e3e2be8cb12bbac9bb2d96"
    "es-ES"
  end
  language "fr" do
    sha256 "e4334159b161c7186c713c054c1f5ae360a256104c03018f5f373583c6ff875d"
    "fr"
  end
  language "it" do
    sha256 "97da78183d8c6a042412d90c6b62e5670428c32f1ec839faf3feb980cf4a8b81"
    "it"
  end
  language "ja" do
    sha256 "deae757614ae42962e2a66e26e522f051fdd6d5f8e02327ac9f87fbe31e3b6f4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ac16b2602124ea8b82ff4470426c8416ad8e001e3df04bae630a3f3820fc2f4a"
    "ko"
  end
  language "nl" do
    sha256 "49e5b172e719b1136c95b66f461cd1f46f9e6b9386430de39ee0aa2ce2cbb9a7"
    "nl"
  end
  language "pt-BR" do
    sha256 "658e83d7de82460f0eddd2fd5e4bd7a8d89e26e770d80bd02bb080032e1c554a"
    "pt-BR"
  end
  language "ru" do
    sha256 "97cb3096c7665c2f3b43f5400ec95f90f3712c595a36ab55aa35fffeeef44cd7"
    "ru"
  end
  language "uk" do
    sha256 "61400e81a6b7553674c4969322afef38b525df571c7c3454e1c3c5fb4363ee09"
    "uk"
  end
  language "zh-TW" do
    sha256 "ddc8787de32e5e6b48e01366b2eb4df204d138bbdafd9a3d0d0695c00af3ac3b"
    "zh-TW"
  end
  language "zh" do
    sha256 "95e5d73a32161421aded9cf949897cf64c2c855cbc4c4c64646c5be8a71ab109"
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
