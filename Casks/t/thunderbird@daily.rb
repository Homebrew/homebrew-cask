cask "thunderbird@daily" do
  version "151.0a1,2026-03-28-09-41-59"

  language "cs" do
    sha256 "3ebfb847467bca9b5bf5a255ff0caf320c45acee34280573af7b6cb5f92727e2"
    "cs"
  end
  language "de" do
    sha256 "af72872774d83035f1df813cb44e9a1a0fcf05a2efa9d9a9c7de5d3d0b420cd5"
    "de"
  end
  language "en-GB" do
    sha256 "cd10242fda3538cc3f7b1b8d5f7bc7a77fbc1ff90eb91442d3db2e1cbd53407e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "49e089ed3bea6a61a4a9290993ed1d4225fac84c459120c58e19decb1f570bb2"
    "en-US"
  end
  language "fr" do
    sha256 "4edb9cab32178fd891df8f3ee63c78289cc09b8c5f21251f930bbd35be406684"
    "fr"
  end
  language "gl" do
    sha256 "b837060633062f1ad94b20e90eac5cf2c4e3ea772c1282487a162bf80d01422c"
    "gl"
  end
  language "it" do
    sha256 "3afd15632c554fa60063fcfdec18d319060c023a29a885fab75e033eaa2de026"
    "it"
  end
  language "ja" do
    sha256 "16cd085d07bf9d8e4d07aab7a7790a9f905c1b22e4d3c6b2894b7fd409516658"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c6707d6dde0a3673b1dbbacd6f47cd1e56be06db04535121142e76e4f81659b3"
    "nl"
  end
  language "pl" do
    sha256 "3595f945af19b5dd57aa82b11ce360b827b40189cad6ee3dfa9c1887cefc929c"
    "pl"
  end
  language "pt" do
    sha256 "c7e2917ed0d831e00b74a3bd22bb9a2cfccbbba62da11e2843f93ed1bdd7d642"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e40eb903fc0e82bf01f7fd30442472cde9aceaa0315a1ed8c768eb0a527ea2af"
    "pt-BR"
  end
  language "ru" do
    sha256 "3efd6d78816a66031bacecd0086d575c06b81f67f067268b6f75a57756fbefa5"
    "ru"
  end
  language "uk" do
    sha256 "2fe842d0615d4bd923c8825a35fec7c5bcc3de23abf46e7c41c0d50592164b7c"
    "uk"
  end
  language "zh-TW" do
    sha256 "58e2d09feeb610f897b025657e6507b0a48cdcdfba4af3fd8ec1167b6f7f0273"
    "zh-TW"
  end
  language "zh" do
    sha256 "1e5fca258df03364ebe09077da26fc5fa96e0abe0854ff8c202861b309c6b7d2"
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
