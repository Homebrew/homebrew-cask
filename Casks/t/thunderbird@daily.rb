cask "thunderbird@daily" do
  version "149.0a1,2026-01-18-06-51-13"

  language "cs" do
    sha256 "2c2b8d1fac346a5dae7815dc5daff53384314daf69c6d4544f24dec2b43af266"
    "cs"
  end
  language "de" do
    sha256 "b6f844262d27b0101caf9f20f13c90fad16264f09d921bbce7d7f74d26be343d"
    "de"
  end
  language "en-GB" do
    sha256 "d51d817e863bcc420f9b7a88366980889b2e5f221d1ee3a165614d684329f60b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "906cf409bde0da03276e3892931f812cbd0d11e5b53a54e3a8290a581c42f219"
    "en-US"
  end
  language "fr" do
    sha256 "3d63d9f8560ff2ea6711c86155f1b85e738657d8314ff808d801df187897f236"
    "fr"
  end
  language "gl" do
    sha256 "03df9ab48f2745f7bc91f238867ecbe7a4beff79ab04f6229a64ed054e54b641"
    "gl"
  end
  language "it" do
    sha256 "d0b161cb4a353aa85031307ff6199fb5a7133c1977527e0c2c6aeec38ac6a84f"
    "it"
  end
  language "ja" do
    sha256 "6c6e98d182fe336473c9eeca8c94fd97f41a7317e3bc92d05228ef0163b4f2ca"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "90f952743b60b8721866b7df2bea7e5c2dce0d2111741d8d5c5723e61df347a3"
    "nl"
  end
  language "pl" do
    sha256 "2c70eee8b9c48ceed7939e8ae380ae119e9c2b7a9cf55e4f0a3503b59aadad2e"
    "pl"
  end
  language "pt" do
    sha256 "662a84add7995efdde04cb21a11a68c5c540b297a2e240b08ef2fbbd20c5ae2e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fdbe980d5823f034374aa9f245b936341763ece4645ea21414f04feef8833c5b"
    "pt-BR"
  end
  language "ru" do
    sha256 "9f754ee0a9b4d40bf30aef9ec79d45db264047312276928dacaaf12096a687a7"
    "ru"
  end
  language "uk" do
    sha256 "1a410d1d11d648022ce047991c74265d8f89b959f2987313347b70820a2bee11"
    "uk"
  end
  language "zh-TW" do
    sha256 "58bdc4cc38909357985f94d0f1c1f474e965e5f90d1cafba22813f1a9eae03c7"
    "zh-TW"
  end
  language "zh" do
    sha256 "7cb23d06eedab60ec1141d55c5fccc50a281241399b798ba35f94cf17c43c34f"
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
