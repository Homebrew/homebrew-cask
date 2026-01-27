cask "thunderbird@daily" do
  version "149.0a1,2026-01-27-10-17-45"

  language "cs" do
    sha256 "0804dcadee83c3a4d36a0e8a5fc8774d591699d06ef5ff518902c807a0b5218e"
    "cs"
  end
  language "de" do
    sha256 "8ea4bb890ee15ee3e5f63e737afa88854f6cb983889d79af560ab2b9095e49fe"
    "de"
  end
  language "en-GB" do
    sha256 "3d79b1733c12501494dfa7d5c27cff19afe25798f896fe30592772d805e46451"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b8f75c14f1a50884c6353b134eca7a242bbdb80380abb8779f3883692ca213cc"
    "en-US"
  end
  language "fr" do
    sha256 "d0a0180419116a981cf3c159e72968314ef5aa7e237c2b79c56391d352ff3d19"
    "fr"
  end
  language "gl" do
    sha256 "a66f6193cbeaa483143490d40707078632d117a6bae033193c44389fa416e5ad"
    "gl"
  end
  language "it" do
    sha256 "5589307b7fe9b3e1594549852cc75e04886260d21996465f5965db9540c58636"
    "it"
  end
  language "ja" do
    sha256 "2c27cfafed4f02c4b1291ee1719f271577b8407b5a131797d6c9650c8e12fd38"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "afc91b66d6189ef4c7e97d2fb57aa533c2b8ccd1128e7de67b06abe913e957c6"
    "nl"
  end
  language "pl" do
    sha256 "c7567d6f1e19f7ee7f1fc15b8a27c22b3a9861d1bb5c5907855b86bfac75bf23"
    "pl"
  end
  language "pt" do
    sha256 "9ffb872ccc1eb18172e0450989f20b44eaff9e81bd47b2d7cf13d73dbdbaf711"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "50c44396f74d05ad0b81736ac7c87113d9a8b21eb9ad3edf9c9b8c91bbc2ce8f"
    "pt-BR"
  end
  language "ru" do
    sha256 "8b2530f1aeee3cfd6fbcd6156c99288f92701998601cdc44b429fc4b5c73ffbd"
    "ru"
  end
  language "uk" do
    sha256 "5d6ab205d0fcc144d96b465f857b75c859d59b08f531191b70b91ef94f70add5"
    "uk"
  end
  language "zh-TW" do
    sha256 "69b1a0dd2b07333192aa3e0d81c628aba993fd8f5f994caeb777e6f5e4a96834"
    "zh-TW"
  end
  language "zh" do
    sha256 "5076bd77f0c9a8ae9654d3943055deef1643b9e3c0ccde86d65b1f49ad47bced"
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
