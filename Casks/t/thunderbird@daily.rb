cask "thunderbird@daily" do
  version "144.0a1,2025-09-02-10-44-21"

  language "cs" do
    sha256 "18acfd01b9ff5ddc4d16ad43552392403710c09e7173e5e8a70222d779ea382f"
    "cs"
  end
  language "de" do
    sha256 "2197d37d9887f9c5335f43913651ebd8710dc572021238ef8c670128fb007cb3"
    "de"
  end
  language "en-GB" do
    sha256 "5886bfdbd2b98fa69751f481cae4f0034b43f99f31d023dd5182bdd95e16b5a3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a479defa3df9c005a22bda85a7a5e608b84dce193e72015056a90e9f7cfbebe4"
    "en-US"
  end
  language "fr" do
    sha256 "c5e19dc1d0097f1e72faa3b34926582dd80d5c6c63acc09f9bb78fe0610935e8"
    "fr"
  end
  language "gl" do
    sha256 "82e0f5672510c758af0292b3299948809c37fd5b26038a59b4b9250ab9a14c0a"
    "gl"
  end
  language "it" do
    sha256 "c6111ce1fb39825a538aecbfbb51b77e41154c2368c86304921125b4c0909fa0"
    "it"
  end
  language "ja" do
    sha256 "3e7b773a1994f32d010d8147f151af5a18eb65496f22bddb430947f65c2500f5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c2555ef969c0f91d270f9f3b573e1a26c78592ffb982e2446229e3441c918b08"
    "nl"
  end
  language "pl" do
    sha256 "fbe4df995b824f440cc0b9599ca39c166c581c3411833a0654cc916c61111d46"
    "pl"
  end
  language "pt" do
    sha256 "614ae8afd50c6a8f489e89223476fd4d6c4147951ad630e42f4d9b7ee5b726a1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bf9709a73e1871a52c7391d782845dc578bfc12ca28c0119009d9fc693105f2a"
    "pt-BR"
  end
  language "ru" do
    sha256 "b24bb8976c3d792ebcb256d34833e982143a79f4d4d5dd06a61345938dd3b47e"
    "ru"
  end
  language "uk" do
    sha256 "794244e7f96a4fecf98dfa9b081bdf6f94f3e369e74a57c4bb7f27d62afd0158"
    "uk"
  end
  language "zh-TW" do
    sha256 "cf137b20283eebd7001c5f6f11872790ac050a24d3ff0d464c30e9365eaca981"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f00c147206d40a9e82dceb98bc6a55fad7c6c5f6218570f48478566175e9ec5"
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
  depends_on macos: ">= :catalina"

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
