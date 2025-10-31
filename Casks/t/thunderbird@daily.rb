cask "thunderbird@daily" do
  version "146.0a1,2025-10-31-10-35-48"

  language "cs" do
    sha256 "7b7d0fbc06e970d3b662537196e17176e9e7055c9fbb8c11f32e66b2b99c4472"
    "cs"
  end
  language "de" do
    sha256 "9c13bb11d5df81952c0c8415b35c34116e644c3d7d15dbf6fbd07d25e816bca3"
    "de"
  end
  language "en-GB" do
    sha256 "1a1c8b076340e185dc42adc57e4111e7d8828443e2869f6a28944fa89c97666f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a58451a2d2b64a3c73fb05f3c9c1885d8f7a93cda3fedf251a2a00106fc84472"
    "en-US"
  end
  language "fr" do
    sha256 "e4a65eb2f6197ca71e9a0ed6d0c4b0d596d313da32ffa583f51e448065c234a4"
    "fr"
  end
  language "gl" do
    sha256 "ddd036bc11419c6fa8da084741a587f40c06cc93122b5bb24121e242606eee2e"
    "gl"
  end
  language "it" do
    sha256 "2c8651ae559d000893c888b9b1c54af631cb7e16d5a1850649f1cd1d179c0efa"
    "it"
  end
  language "ja" do
    sha256 "9c10fc89ef432078ee55496c9d026d8f729de68701021ace66cf1e43a6cf7f0d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ab73907ae9777b3eafc1cbccea4402293990a3e681eca366326793fd5ff2864c"
    "nl"
  end
  language "pl" do
    sha256 "e6567d74f0b0476f27a928aeae793e534c0c647dd3d995393fb769d15c04969f"
    "pl"
  end
  language "pt" do
    sha256 "5989e78762070549596078168b8e321d4d366a3236f3b9d0aa951efdce750125"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4e53512f0732241c06b1340f37a3da06b5f6a22be5fdbc4251a8401083202778"
    "pt-BR"
  end
  language "ru" do
    sha256 "0aab0726c91411f12dab5925fed105e4622f7a095fec130199cdf7e8add76074"
    "ru"
  end
  language "uk" do
    sha256 "04b4024d84923fdf59b7d38515f7147331238b12cfa647cd09928b3d148abd5b"
    "uk"
  end
  language "zh-TW" do
    sha256 "75d49884140a1e3e7a99d774ccac0918a2ae3afc6b3c205a6bb4ac30278e9bb6"
    "zh-TW"
  end
  language "zh" do
    sha256 "ec5d186e42fddd85f90422bd19f27012cbc5b6c3740e6c1dc5e9e4a3e938e863"
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

  app "Thunderbird Daily.app"

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
