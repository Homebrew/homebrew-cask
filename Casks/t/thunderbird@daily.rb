cask "thunderbird@daily" do
  version "149.0a1,2026-02-12-10-22-56"

  language "cs" do
    sha256 "071e966dc2ed89baee322b46acbf606a077d31f4d8e478348712ea4b3ea06b11"
    "cs"
  end
  language "de" do
    sha256 "52c03bcbabd5d3d8d0f40446dd65ae22852e75a38b7abbce155136b8fecb0152"
    "de"
  end
  language "en-GB" do
    sha256 "7d7dfda7dd060ce50c1a6b9a4a1d0ac69fab91eab0ecc3e5ef080355d807a3b5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1369d391889ee7bcd9124e67a9a6ca3a7ca32b92b8beec3ebecf4d5668f51b92"
    "en-US"
  end
  language "fr" do
    sha256 "a8cf4d1faf25eb4e015a0fae7bca187da602ba19c84a9ae2202003fb728d3079"
    "fr"
  end
  language "gl" do
    sha256 "af6b2f634998ab79b9fe97fdad8f3efab62f48c2aa84fa613fb39e04534e4ec9"
    "gl"
  end
  language "it" do
    sha256 "88434d5fa592dd994f51a08b7d0b2724732d14c5cbef3764a9512ddb82c03aab"
    "it"
  end
  language "ja" do
    sha256 "609b4588b0639d708d56a288535b29d794ffcf812418cca1676d5561f9d8f288"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3c42e373f04e371f9127224b35898d788861d17f937e51c11a36f645a23e4197"
    "nl"
  end
  language "pl" do
    sha256 "765c9655235b3efbadefc3a289923cc7d339eebd8aa42067c5f61d993bdd6567"
    "pl"
  end
  language "pt" do
    sha256 "d31185e05f14ba9ed9e544a73c382034504ccef8df7446ea7ed781055b8a2780"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4ec11606d6949e6b2c9b3bb6e79d105bcc147c59463f097384b484e3ac808b6d"
    "pt-BR"
  end
  language "ru" do
    sha256 "111ba85e8269c9ceb6a39d0fb48af3c175cdfe8998c7ea416678710c4da1e0bd"
    "ru"
  end
  language "uk" do
    sha256 "bf2a4f37539efb278b10dc19da9e8f7b2108fe22813bb5581c41bcc17bdb0a87"
    "uk"
  end
  language "zh-TW" do
    sha256 "9dd0313d5af5f8a3ce1426e6eaa4b99eb521901f686faa9c8b804ac6bbb39271"
    "zh-TW"
  end
  language "zh" do
    sha256 "caee98bf162db1cd38e8f0111e72744626c69fe149af9c0c0ac1c42e455067e7"
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
