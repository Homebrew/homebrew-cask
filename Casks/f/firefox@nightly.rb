cask "firefox@nightly" do
  version "148.0a1,2025-12-18-09-56-01"

  language "ca" do
    sha256 "5014a40f805f8990960048fc020fa70a5ab94f3baad9d1ba94b9c14c481cf133"
    "ca"
  end
  language "cs" do
    sha256 "bfe4e55bba7f1508be6dc21d949359a505712f091fc2178f823c2c0a3d9f3717"
    "cs"
  end
  language "de" do
    sha256 "488fd2ddc4226739d0363df3f22551da0f987ebaff876e0ef8d48cdb74742b9f"
    "de"
  end
  language "en-CA" do
    sha256 "2a2818a8a03353af0fe3836bfb6a5d62fa96cdb9b545bd1901fb5e2305efb9a2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "36eaa905eeab8942ff08cc39d4e23f590da126da8c260c3c2baab91597fceabf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a8bc932b5158fb1a54a14d757dbdeaa70f195f42c67f5a0e280990f505d2206a"
    "en-US"
  end
  language "es" do
    sha256 "ca6a77e2e7574554da66a0fcd6107770d16c8378efb2140cf1f9b470d2747293"
    "es-ES"
  end
  language "fr" do
    sha256 "21fae50c6338e8f046a38ef401cac0fd159410b4d66dc8ec7be6dda9ce0750d9"
    "fr"
  end
  language "it" do
    sha256 "77da3f93b839e8d749dfb421fb705659e1bfbc42d79af611947c5c4a9c907a9b"
    "it"
  end
  language "ja" do
    sha256 "3d181eb321ee70194eecc8aaa75485340ce5a3293351e77ec0a213695a670207"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b10062d81865fd5c9710671a6d19d31a2c152a6cc8ea536f9abd10a655105014"
    "ko"
  end
  language "nl" do
    sha256 "cfb81313f042884f54ca760626592933f0e1b0ffcc55673ce21892682058b26d"
    "nl"
  end
  language "pt-BR" do
    sha256 "a52b64817689bb9ef8d174a19a80e6f2b79750282d600afefb56de93173031b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "54063fa0674b1c3363f4f1dd1f06e6d04d8a118b5565564ffc7583bd2ce3f519"
    "ru"
  end
  language "uk" do
    sha256 "aced72d8b55b8e704a84e3868f989aa77bebeb00b72e115ad35b66bc12ab7465"
    "uk"
  end
  language "zh-TW" do
    sha256 "a389999d66ce852ef51036dd04843d9531e8dc3af10f08d44d4d9e3138f8d1a1"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2f47b3989137a67eda76044def2e4758ee33abbe79c3eaee48653f6fe64606d"
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
