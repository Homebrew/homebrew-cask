cask "firefox@nightly" do
  version "147.0a1,2025-11-11-16-32-58"

  language "ca" do
    sha256 "c9ccadd38831fc4074167f61eb97c59e4907b02b15649a947fcb83ec1577f771"
    "ca"
  end
  language "cs" do
    sha256 "71012fb7d96fb3cc3fde775ae0f43fd87131e5cb94a634959303cf360ed2a37b"
    "cs"
  end
  language "de" do
    sha256 "e0b6288d5ccb0d76c91b9949cb076b663dbc9ddde7e2dff9494de90fba39fa19"
    "de"
  end
  language "en-CA" do
    sha256 "d1d731ebfb0af6970c96b5116a885fc5d7c3ae554604d45e236e102a33007e68"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7663eb5e77c4734fdaa75fd1895730b685070209e15af827614b403bca4ad56c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "00575de2ffe141b0b12da5bdb649f70154ac45ebce5c59bc7fa96ce3cb36cc62"
    "en-US"
  end
  language "es" do
    sha256 "d4c921119c8728a93b6b7bede11b94695bf87e5b8f505d7023c15cfacc781314"
    "es-ES"
  end
  language "fr" do
    sha256 "2097ddf96ef25f57d66fd42c53b3756d48c46d2bb199efa8b83523e9b5047e02"
    "fr"
  end
  language "it" do
    sha256 "8dd677bc4eb224a2cd2e3d90b0f624fcc4fea9bff5e00f2d261a010b29dd80ee"
    "it"
  end
  language "ja" do
    sha256 "cffb7d39e508660016282a4681666b4ca093cc2e7f6d50c4b32b3623291e3e74"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c8fda5943f270d59f3384372d9c81c0ae7799c2d7dcc71e5356b0edc5a47f81d"
    "ko"
  end
  language "nl" do
    sha256 "07224b7ecbfb2cf2f66ebde82640afd045eeecd8772c38fca508288b15ad61d8"
    "nl"
  end
  language "pt-BR" do
    sha256 "5003882b6d08d4da1f6d852fc5e113e213865dc0d5773c1a993fc530d1d8fb87"
    "pt-BR"
  end
  language "ru" do
    sha256 "b1a6af9eb2b9fe1d92e2c13cda94539670b2a021d3cd281b9fd33d785bb183a1"
    "ru"
  end
  language "uk" do
    sha256 "fa9786395fb39ef211280296b75d5abaf72246f9a96a5c5d28da74bdd8ec0796"
    "uk"
  end
  language "zh-TW" do
    sha256 "b02e0e4a308ca20731d4c1109eda77a7a70af26721ff6161c9c990095437afa1"
    "zh-TW"
  end
  language "zh" do
    sha256 "a7493732834f119bd3b1ff9f3a5b20fbfeb907c6bc7c47a91b01b570a0ec8626"
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
