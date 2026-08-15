cask "thunderbird@daily" do
  version "156.0a1,2026-08-15-10-49-17"

  language "cs" do
    sha256 "3098d143b1bb0d86c68e36bbe7bc655f744a2c16961d5070b374d0890cb05e89"
    "cs"
  end
  language "de" do
    sha256 "be1ad8662fb6c574559f651cb16e8ec8884a82f1d8c269d42f70ebb60dcbcf2c"
    "de"
  end
  language "en-GB" do
    sha256 "af4c5fa0fdb48ceed8b7973d0ec95c89b80897db6e756eba93569e57dd34f6b8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "765e7e764fdb93afc692509933842985eee2a7228452d0e8438b9d95e0b730ec"
    "en-US"
  end
  language "fr" do
    sha256 "c1fb2d89caa559ae593cb018927808545aa5c086bda6595d7d533a0b3345fda6"
    "fr"
  end
  language "gl" do
    sha256 "61609151a311ea4931eecbf9d4a9309578aa075b341cf50eb3f0ead6c37771bc"
    "gl"
  end
  language "it" do
    sha256 "7138a7ff9fe95bc857f557ae300738d2f2df1fa0d3151261a798c9450b3015e8"
    "it"
  end
  language "ja" do
    sha256 "67f728dbe323e2580c5652c4d32df0471fe7b4c1e08ce19ce8027f0f46c5852d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "89118ec429d71c3d6f0d6530cf4a143bb413c234e6fd4ea00ce427a42409c3ee"
    "nl"
  end
  language "pl" do
    sha256 "22f40f6645cfcd8d9cc04fc0566c2a4a084ec39709deee2ea4234d9b938bae74"
    "pl"
  end
  language "pt" do
    sha256 "1424e0094dea935485fce7a9553314b513d00fe6fc8fd3b9b0b00c671278f28b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "cb772feb34c60a8e489bb504490aef1b2269021909b52019dfaf9562943e8d8d"
    "pt-BR"
  end
  language "ru" do
    sha256 "2a7f00fe4f92f1352cc0a1f8f2735078f3c30920c346061515eb619b87e7889e"
    "ru"
  end
  language "uk" do
    sha256 "7f733dd1be4f7908740c6f470aa7d69fc9cf8b1b11441597d2fe4bae82fd1282"
    "uk"
  end
  language "zh-TW" do
    sha256 "b383eea24445697977e4e9f4f7c6a473decd6e346edd8d148e9fbcd707aba8f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "4240348136c3d2279dd0f1c14df737f3f80e32e23251946e1a86ff23d1889160"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
