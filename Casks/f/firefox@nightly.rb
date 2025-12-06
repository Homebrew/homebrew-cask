cask "firefox@nightly" do
  version "147.0a1,2025-12-05-20-56-42"

  language "ca" do
    sha256 "9d1a4eb07c451dbcefb31b3d1bb39f8d24a44cdabbf7d2f7498c80024bb6ec52"
    "ca"
  end
  language "cs" do
    sha256 "17156855a977598a9295ba093989dfdba018b2e35697d11a08c8fc7bda523327"
    "cs"
  end
  language "de" do
    sha256 "efe799fa03714eb37896e6d3bac99482c2d7de7a80763c78635a78809524cbbf"
    "de"
  end
  language "en-CA" do
    sha256 "213165056a97a2c86e61089c8106fec09829cd10ac732cb2915c18cfd466700d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "495437e0980e11541e3de1e299252ac09609a7703236eb40fa8d4525a2366bfe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ee5739c853077c5824529b4ce98feb171151aec9503c2098607fb0f549fd6460"
    "en-US"
  end
  language "es" do
    sha256 "d90861157c58096397dc1aae0cf3c84bf9b1af2fb1f47671b0bede32ba4d29be"
    "es-ES"
  end
  language "fr" do
    sha256 "d4377156b7bb0088cb7215259cb9fc070682ee5ca3345a3e3a9507399839e145"
    "fr"
  end
  language "it" do
    sha256 "6a78b2be599ca5c1b81a3b6c78c51dfa848a8058efe4f18eea88ed5bc6327d6f"
    "it"
  end
  language "ja" do
    sha256 "27bce694fe67c96fa65ccb4ee36fac8aebaaa04217fd0dde314ed6ccca0dc0f8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8348c4f3bb15edd5ee7b50885796aafdade4813725d372be4c9652b21a67d5d9"
    "ko"
  end
  language "nl" do
    sha256 "7a65c7d7b020ba9bd259847990ff0afb44c4403ad7657e975488b18d845c7c16"
    "nl"
  end
  language "pt-BR" do
    sha256 "04465d9cbc96c45b402c52fd901800e09680327ba36b3042ee44eee3b2a873c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "4e8d69490c7180964ef2b87733d38f47745a381833b78705860610a8fddd3f0d"
    "ru"
  end
  language "uk" do
    sha256 "eb148238167bd097b589ba195a810c1eac914547adbb57c650fc2f9b4243a450"
    "uk"
  end
  language "zh-TW" do
    sha256 "275370e3a9196de76b461b3007dcb97623ee327707b163d9dd0216331a3f788f"
    "zh-TW"
  end
  language "zh" do
    sha256 "e265cd082c4845a84c91deac75b2bd282b663b951bb45a2211556b543ec18311"
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
