cask "thunderbird@daily" do
  version "151.0a1,2026-04-03-09-57-45"

  language "cs" do
    sha256 "d11d51314b09a316fc543c20892fde41280777ed523d86ae572058fb7b709ebb"
    "cs"
  end
  language "de" do
    sha256 "d57aa0f71bca57dfb3cb4faf8da2b7e8fe1b3948fc17df5b4d8071474a19285d"
    "de"
  end
  language "en-GB" do
    sha256 "ea90318869b49d34fbb4c946f063d0d2922efc4888e31f7af79b58bda1fb28bb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c48b11999f0b3685ebee4233a429a732d3fcc531672c0c5891e83bc6215a13e1"
    "en-US"
  end
  language "fr" do
    sha256 "4b88c566351730108a0f8bf8332c3e4cfc10169778001b8015821cb92e9a9909"
    "fr"
  end
  language "gl" do
    sha256 "80b31f5cc0af39713b2cda7b4e7f32749564bbac8f514115b709dd56d925135b"
    "gl"
  end
  language "it" do
    sha256 "aeb3c8458630a811abf3c4857d72863743e6ce352ac884495d15b88d8c8309e2"
    "it"
  end
  language "ja" do
    sha256 "70fe6b92c6f3dc3c5b016a7d9df14669e376a945b535259971dcb336d4f11b45"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3a3a20bc26ae1aaac28dd1c1ff0165235a5b3a976aaf4f7d80a81caeb923e460"
    "nl"
  end
  language "pl" do
    sha256 "47794c091ab7abdf52bdb22149f301060a40167a32b7ff781efca420c9936404"
    "pl"
  end
  language "pt" do
    sha256 "611cda08fbd6dad1c5226066e41d153bcad54ba4dccc901db92f521c972e94ee"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b2cb600714f0099b7bac926c6d9dfde8ee01c388dabfae06fa1a158d547557db"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa1dbc0f2f9f1e65c8346716fd46979ffebdadba2cb42e1d3560514bf128badd"
    "ru"
  end
  language "uk" do
    sha256 "6f4c9ac99ed761d0d84a661a3528d4ce67987f668f79632505ed20ea556a90e6"
    "uk"
  end
  language "zh-TW" do
    sha256 "53bc14ce7a34eff01d360f042fe79424f0d5409ac3b031f1812753ad6f711aaf"
    "zh-TW"
  end
  language "zh" do
    sha256 "5f9cab62a2222692df43d4e2f29813b0103d73267249e5e3ff1629287fabb57c"
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
