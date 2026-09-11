cask "thunderbird@daily" do
  version "158.0a1,2026-09-11-10-25-54"

  language "cs" do
    sha256 "d9ca1d16b93be7196e5c22e51ce605b9be292c85453519e3e0c973de1257569e"
    "cs"
  end
  language "de" do
    sha256 "21c6862ce649effbeab46d8db1b9b801265377837c179c83aefbf31cec81b842"
    "de"
  end
  language "en-GB" do
    sha256 "0a1d225bc0270f80034ec06207e05942a9eb76770c888bd6cd32f8523f831ae4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87fb45ace1c8ba76f6765d2653cfdfcae27610cc62150d7ef8b973957402e9a8"
    "en-US"
  end
  language "fr" do
    sha256 "aa8b0659156fe89e7710a2c55a3ab6daf884cfd539f286523222de02cd51af6b"
    "fr"
  end
  language "gl" do
    sha256 "4d784047a4e5aca2e139a174ffb2a6d8b09a509b3c22cab1ada20d7bf0aa332a"
    "gl"
  end
  language "it" do
    sha256 "a5d0b14b83201a2509f033ed635ce7104d807d99e34c96bdf13015c7f4f74135"
    "it"
  end
  language "ja" do
    sha256 "056601b67040004ef7e720a965ed76139b3f9dae7df0ee2f6b9f6d0d8e204502"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a389684dd6ef051b728fbd8f3fecd0d80836cfc1b247047ee70417f89a506527"
    "nl"
  end
  language "pl" do
    sha256 "085fea7d2099e029ab98dda84a4827122bb146fd8f33397df4ed7f70f879189b"
    "pl"
  end
  language "pt" do
    sha256 "02721972c87ba8dc84690f0971e28388d2a5624a99c9cda852b17381102d633f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "eca1c63e0f6bb7e14e82d3eb71322d0d161dd0d722a06e07ee01fa925a57ffeb"
    "pt-BR"
  end
  language "ru" do
    sha256 "5b9374bba16e65e1c93c78208dac368774bf5b982160952dd142ebac482d3306"
    "ru"
  end
  language "uk" do
    sha256 "22a630bd12554bfe28eb305d0ecb0f850a63ffac267e5abe189f187305831299"
    "uk"
  end
  language "zh-TW" do
    sha256 "bb50433a8f4bb23e19fab28f5b06265aef4ca81ecd438758b71ac139005f4e28"
    "zh-TW"
  end
  language "zh" do
    sha256 "10ebc3167c6723922b2fdb759b8a8822be8c2ed3116059dbfa0e985284d41951"
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
