cask "thunderbird@daily" do
  version "146.0a1,2025-10-29-10-36-59"

  language "cs" do
    sha256 "321cf2e5990c2b5a9414feac8afcaa8021eaa7d2e179a7f8348a54034efbbab7"
    "cs"
  end
  language "de" do
    sha256 "19271f422b4f4012f30bd25852bb84e8ac295357e439741d8af28da1538c10ca"
    "de"
  end
  language "en-GB" do
    sha256 "a34b79cfb3eabd0c0b3ff74311da3f579a92bd0a675f385583fe71dbbfd8281d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "347d70fcc919f178f133e5a7dced70fbe78bbcf43f76194e08f2633e8ae63476"
    "en-US"
  end
  language "fr" do
    sha256 "858f55139bbfbb1cf074ffb0765293f2df333ef05f3a6d97fe8d7293a0360754"
    "fr"
  end
  language "gl" do
    sha256 "ce372122d7518c1893f2db9367784719578cca59b6fbb900ab932333aa63eb3b"
    "gl"
  end
  language "it" do
    sha256 "3a851838aab925905992eb70d3085e7002834686623535d817740839271c6bc3"
    "it"
  end
  language "ja" do
    sha256 "06772dc9d8caaf298a47cbbc3561ed83141565345261f78434fcfc5fef14e7c1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fc07d8f27bc0e07d375d1b57c5c39a941c0c28d8c60c0f13e5375f4180955fa6"
    "nl"
  end
  language "pl" do
    sha256 "f471529c84c25acdecbf22bbca3f03b93fd78b737d5c5a1b7ed3340017b541f3"
    "pl"
  end
  language "pt" do
    sha256 "8fbc28edc92a9a8a0499c9544914694edc59959da92b67ca978b95a64248b401"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "12d3a02dfba42823a02ffc113eeae143267de7d8a784b20a4f5121c0915048a6"
    "pt-BR"
  end
  language "ru" do
    sha256 "c933394257928e18c936357f9103d05ba9ced5c9f124fcffc9ba80e3974ad7bb"
    "ru"
  end
  language "uk" do
    sha256 "33813c3718ce815b51f8b2ff3dc13764aad49572045f20ecf68ac144ea289734"
    "uk"
  end
  language "zh-TW" do
    sha256 "06788478ad865b4c3719618632a358e02be784a9df9abde7451b502738760a4f"
    "zh-TW"
  end
  language "zh" do
    sha256 "924c022694b2bd9fba0b6590c6c7d4bf4f3b1fa864d76cf3441028b9bc527879"
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
