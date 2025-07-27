cask "firefox@nightly" do
  version "143.0a1,2025-07-27-09-20-01"

  language "ca" do
    sha256 "3a781dabb05390f85b21eb5179a19d1499f26974227cf9a8f1971886585fdae6"
    "ca"
  end
  language "cs" do
    sha256 "aa80465e38935fcb5350d62d36aa9cbca572f55ce7f9219f5ed81c7e9cb5440a"
    "cs"
  end
  language "de" do
    sha256 "eb3a3d8767ddda556d3165b898619597f4954985da0825ffa052ef2fd605ecd3"
    "de"
  end
  language "en-CA" do
    sha256 "94af420f0480e32023cc07b3948f6ff47d35c3c13a77ea226a06ba3fcfdbacf9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3662c04574c9476670ca3c8b9c524d06bbefe18e210622f1e0315cccffb38766"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79214b4ae396a45d875215c9a3e72d4edc6fe35765f4c78eb4b80ef82ef55551"
    "en-US"
  end
  language "es" do
    sha256 "5e35f4965a27001359957cba945b6582baab39778e5102b2f5e4fb5307a36d4d"
    "es-ES"
  end
  language "fr" do
    sha256 "03bb7fe8ae230217e70beb3f8bc4aca23ef0ee0101a81fbe697e3c234b668ff7"
    "fr"
  end
  language "it" do
    sha256 "e528b2ae6b02c1c5e19155862bf2d5ccda8b1b1650dc8ed676a296e9c072f0ce"
    "it"
  end
  language "ja" do
    sha256 "9af14538458ffe415456da0fffe4cf649cc8042a95f3825e5f728e15c49c43cc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "507d2316514f62dc4004d20b573e9e8378d3ab00b41e2a717b7f56c9b23c0e08"
    "ko"
  end
  language "nl" do
    sha256 "42c14efa5c0bc287098df6b591fc31e3a88ea4314fc51b4a30ade740454fcead"
    "nl"
  end
  language "pt-BR" do
    sha256 "fa3359192ae480d2122f96f28071ec9935db694b31bd33c005db91ac4e5a358b"
    "pt-BR"
  end
  language "ru" do
    sha256 "6c0010871ebb886c8dff219b020423494e48fe81a1f6eed05d13b483849d85de"
    "ru"
  end
  language "uk" do
    sha256 "eb24e145db86a3f43c298f5c7079d8352fb49334a03de2798768bae471ce00e5"
    "uk"
  end
  language "zh-TW" do
    sha256 "c1b4528c8ae562509c14c461fd6e44fe340a009ed382f4b4d103cb05e16c9ddd"
    "zh-TW"
  end
  language "zh" do
    sha256 "07536ae9c1d9cb321e0b64a73680853e90edc7a6c2df3740f48418c1200f4076"
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
