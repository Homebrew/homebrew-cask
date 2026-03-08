cask "firefox@nightly" do
  version "150.0a1,2026-03-08-09-28-14"

  language "ca" do
    sha256 "8f967062cb18548cd8ac9540837d1a9510d173d970872799b96fab182d3fc781"
    "ca"
  end
  language "cs" do
    sha256 "f61191cbb039d00778014654cf70c9a5c6e35bfdd795c0b076620412d1154446"
    "cs"
  end
  language "de" do
    sha256 "505d9f4c438dee376095cfb9970e1862318a6a558646b7d5546cc88d1f7ab9d3"
    "de"
  end
  language "en-CA" do
    sha256 "fc4589cce65d70bb05eb133bfadabb4944c622607643f2cea244fafc41ed5358"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e00868480d64fbe9a2936139337207a00065a12a7128bfc66253b7d73f27a036"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f7f7b2667e5f2d45a4b28f925ec6f1779cd0cae94e07b33f7fc6632e9f59aac9"
    "en-US"
  end
  language "es" do
    sha256 "2573986bd4ec9af0f2ee00ddb0492838bd07f779fcf525c7692680b111115cfc"
    "es-ES"
  end
  language "fr" do
    sha256 "278fd8788afbf9134745103cc5e354da3e2e4c51a91d1514fb1284f8e80c865c"
    "fr"
  end
  language "it" do
    sha256 "0faa694fca9dd5cb6b3a93588ee9c1e20b09f650c5666f3266e80a8288f4b9a1"
    "it"
  end
  language "ja" do
    sha256 "21d6cc7f5c31ff8cddef5802b165cfca4c721b8c873630711eb77908489b1625"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d9e30efd9da0f69a9ccd2bba2c0510881df6feef4eb940f070ac676ba231b725"
    "ko"
  end
  language "nl" do
    sha256 "554b7bfddcc3585cdabe6d84b8dd502aeda66d4437076ccab5bf60c13eb15f04"
    "nl"
  end
  language "pt-BR" do
    sha256 "8e8f1aba5ede7f66a4d20815c29e35da6d49889567c845bd3dab8d598246f28d"
    "pt-BR"
  end
  language "ru" do
    sha256 "98fc7391d2bcd70d91cb74b3f81ae54fdc9ee0bfe17766f11fb09fe29688191f"
    "ru"
  end
  language "uk" do
    sha256 "42300599043195302830586e35344c833dc2f7fe324266c775b5e59c9e5246b2"
    "uk"
  end
  language "zh-TW" do
    sha256 "9d9fd0c570733ef2121c6069e0849602a0dd59dcdd20fd150e463110b0272d11"
    "zh-TW"
  end
  language "zh" do
    sha256 "a86b6a7d1fa314bbf259c612d50ad25fd2deb516dacce41378b3afda0f5e055f"
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
