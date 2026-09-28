cask "thunderbird@daily" do
  version "159.0a1,2026-09-27-10-27-26"

  language "cs" do
    sha256 "ffb1d2e621cb2c0e168a169a4e0d2729ee4eab42f4c9d5393e6d344b6c12c48c"
    "cs"
  end
  language "de" do
    sha256 "f882503673fb723c418bcd93e41215f991ae15b7482bb196876823c4537fe8a8"
    "de"
  end
  language "en-GB" do
    sha256 "554cabfe2b84cbd8dcbc291fce664b4896cd8f1a23813fd7623b2fc372715f4a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4cc99fb280403d4bb3c97927bd6841a1fdd4752303e2792df7befd650993961"
    "en-US"
  end
  language "fr" do
    sha256 "025b1f45d6421a928f80e61680a37dbf95e6c8ea055f23e9b8a4137878ed1b0e"
    "fr"
  end
  language "gl" do
    sha256 "40febd410733884496d61a470e7e35aecd3a069c50edbb55c03d2e761f68a9ef"
    "gl"
  end
  language "it" do
    sha256 "056e62a4adc668eb541edfdedf3afae97f580beecd9716320a944ed8fe52cc30"
    "it"
  end
  language "ja" do
    sha256 "5acb3e1477bd5078b3b5e6221989af0cf83dc1ceafdc3e4a0b602cfd435ddd62"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "22fceb4f0e9038e3921f2e8eed1026927dd5322a0b3cd5b6b7c9a066c22fbea9"
    "nl"
  end
  language "pl" do
    sha256 "bbeeca991c8523a0ec15224646a3462eb60a59e94a7832126a305cbad7d41223"
    "pl"
  end
  language "pt" do
    sha256 "c031c97782032fa57669d3885b90e523a6316d51944b4c0a6bbac3b3a141ed31"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fd95e22691aaf170b870fcb0c172862c0b87793996f9d276c718673a8eeb3899"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ce651bded9da101925f775f8fc9da975195e2426f2e7bf29920ab0df3d0b03a"
    "ru"
  end
  language "uk" do
    sha256 "b1a756ecd6846ddbc24cfa6a56546b7b62edc4970b1d29f50b63ad8fd68e425d"
    "uk"
  end
  language "zh-TW" do
    sha256 "7e2367d0dfb7f44bf9b4e9da40f61b29e2e190ce8f13304a1f00fa33915d4b56"
    "zh-TW"
  end
  language "zh" do
    sha256 "4eee5c63313977eb9b9a44c128780ecf1b6d36f826d4f5629e02d0d5ce15025e"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
