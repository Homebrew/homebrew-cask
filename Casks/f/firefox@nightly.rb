cask "firefox@nightly" do
  version "143.0a1,2025-08-16-08-37-46"

  language "ca" do
    sha256 "9ce63ccea313b2de1e86344dcc9aaea975c81b9525aa79d87033807696350699"
    "ca"
  end
  language "cs" do
    sha256 "dfc7192ccd357eb53ca6c9f36813e28467421b44856eca0f42bd940055029940"
    "cs"
  end
  language "de" do
    sha256 "1f1efa53194407dcfce46988028d0fe8f748216b85c0b6d13ad2a1f81f035a24"
    "de"
  end
  language "en-CA" do
    sha256 "f127fabacb7a38ff84e8a6c41f72e023a2e1d9ca9e103df6ff8b343618d6eeac"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3c734ceb1a17d6023a62249c455c97bf58d6e44c3aae023281bab1111345eddd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "566f7e07f5a90cdbdb775a41c2844df5330fc510004956942cf9b231d72e86bf"
    "en-US"
  end
  language "es" do
    sha256 "d55157d016db9b5415e3f8fd87ab0bb4dcf86150efd0aabd5cf7df091dc1f58a"
    "es-ES"
  end
  language "fr" do
    sha256 "d9a285fcbcd0c66586a7199a136796dc52ff968fe43013e7359ad43d9c4e1399"
    "fr"
  end
  language "it" do
    sha256 "d98e4967a87f211cbcfda6c67d64fc9843f7d4caad64d74f7dea3cb51d6c2c04"
    "it"
  end
  language "ja" do
    sha256 "161cfc46e6c4fdfe2bf98d09707308d7a20865bf3072f1b83aa31556dfe5c4ef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f535af9843c55a1bf834245813c5d968c6e7683fbfdfbdb0cd5c3d341cb26e19"
    "ko"
  end
  language "nl" do
    sha256 "e533f99359fe04a389307fa8a06bff5c0cef149537a44ff555fffc01f65c6b9a"
    "nl"
  end
  language "pt-BR" do
    sha256 "4473d25ad527c982b79687bec123151770e34aeac1c83148e5a0dc41097d64e6"
    "pt-BR"
  end
  language "ru" do
    sha256 "ad73dd5cd6061773709b0c791508df793d695970adfb138ae59f568941eab578"
    "ru"
  end
  language "uk" do
    sha256 "90f32cc59d3d50f6adeb11da403bb14043ec1cf1a83514883ab07534349e7bf7"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed3eebd1a8512a65d7a47216200d2444992cb5cd3173ec8e95f4ac3b50759fbf"
    "zh-TW"
  end
  language "zh" do
    sha256 "c34fd2eef9bd5271eb33a52fe39087e6080e21f788af826fc5e43543e4408ded"
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
