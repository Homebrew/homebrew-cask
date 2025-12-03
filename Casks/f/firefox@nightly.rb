cask "firefox@nightly" do
  version "147.0a1,2025-12-03-09-20-53"

  language "ca" do
    sha256 "cfa1e767e871b9d7453402668cb94695dd232ad704c59c568be954be8bfd67a4"
    "ca"
  end
  language "cs" do
    sha256 "9a75bafdd2850cab3feb8bebe0fee0de5a6047640a306e23bb61d45c18bc4ac7"
    "cs"
  end
  language "de" do
    sha256 "0411b60ae532f1c5f34f067c9a60f71a6a6b0a0d4c64431c6bff6cb38b52adaa"
    "de"
  end
  language "en-CA" do
    sha256 "5daad76d2eabe7845f9fd7345dbf1fd889c2d456247917f864a46185027ceeb5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e358bf93c828952030eaf7dbc96e463544660bdfa1082be29e458292f2f82f7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "66082dbb1cd629627db3ee576be0fb4430ad4a5cb3b41f13805571c5c1cd2fc4"
    "en-US"
  end
  language "es" do
    sha256 "ddb8e8136da199cfd4137fb48992b633435edcd0b40e4e8c5d5c1f32b29b7f13"
    "es-ES"
  end
  language "fr" do
    sha256 "1fbd48406ab23090540ec7983477b80047f081e3b61c16c7013ec29316feb982"
    "fr"
  end
  language "it" do
    sha256 "88f38c2e85e77099e9e3382a8b5940c842e91c2bee9c3efc370f337bcb927c50"
    "it"
  end
  language "ja" do
    sha256 "7aa8eb984dea49656a10d100ebc55cbb75132be035d086d73a67896df563fef6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6f73fba7cef3a0f2426963e1b29ff126f5823b1c5c873d63fdba98ba80656163"
    "ko"
  end
  language "nl" do
    sha256 "5ae0522584f96c31da3a0ea305c571a6a86da470645c9d81f252aeae9b253fe1"
    "nl"
  end
  language "pt-BR" do
    sha256 "fd6d60361ce2fd24ddc334c9d98c9ac54ea0c26f409dd07208d6d226100597d0"
    "pt-BR"
  end
  language "ru" do
    sha256 "27a76e74c46612e3f4825ddf79a28b815dd4d6fa7af076bdc513ad79a0f9ea2c"
    "ru"
  end
  language "uk" do
    sha256 "9c3173a2fbf6a1d65f448ebab20f3388f8c2e7a6c269c33833f6ae704153ec44"
    "uk"
  end
  language "zh-TW" do
    sha256 "6368d417991a744afd0dbd726f611ce211686147669f073c7471ed5df0909ffb"
    "zh-TW"
  end
  language "zh" do
    sha256 "5169eacdfce1a3c06d5dfa8afe6fbf3a4f280cdbd413a3a2fb279b5b396b84d1"
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
