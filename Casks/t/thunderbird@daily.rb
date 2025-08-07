cask "thunderbird@daily" do
  version "143.0a1,2025-08-07-10-13-07"

  language "cs" do
    sha256 "753b3e38303b011624049cc0607dfcc156c0c762e835bd47bfcb1bfd74156d13"
    "cs"
  end
  language "de" do
    sha256 "4077e74a3c7d9296d2969bb2a3bf843c42eb5c116a58cff14e844f8eec2dd58f"
    "de"
  end
  language "en-GB" do
    sha256 "16423fd376d5ef41c155ca4025be9c7f01a21a0b6af4871313e71e88f5f511ae"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3bc520fb2b80aab9105dbbb78dc2bbfba120b5c6fcd52efbb7d458ca95ac9fe6"
    "en-US"
  end
  language "fr" do
    sha256 "cf8e8fd46eb90d1b17e473f455f88dd9bd37641b9bed6259dde77372b556130c"
    "fr"
  end
  language "gl" do
    sha256 "b6eb7f6f1e9a4cb66da56fbe089d0d03df6de156798f3b12432653e1e534e7b6"
    "gl"
  end
  language "it" do
    sha256 "c447637201cddbdee67610de1349c35da08caf3a469ed4473fd5b300d93e8718"
    "it"
  end
  language "ja" do
    sha256 "a8488d83d9738e09ba6817170d5b6e396421e21f1b0e2803d592558c00a2c509"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8a4efcdfab8c84dbfae5d33cb7b251e61277d61fb9553e082b195d2d99fa2985"
    "nl"
  end
  language "pl" do
    sha256 "6eb346e08700c9254004cfbff9102765ba8acb8902bf63ad9d699b254862ffba"
    "pl"
  end
  language "pt" do
    sha256 "da082f69427fb19176e6a9e1ec2feeae73bf102e2bdb1c076d7c5da53ce44a91"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6ff71332017176aedd80b587dca4409cde404aed9f045c4fb1daa02a801efa2d"
    "pt-BR"
  end
  language "ru" do
    sha256 "8b83f38b6091dfba1ed72ec08b454e28ebff8bb1c90645a9182d882e5ebf14ce"
    "ru"
  end
  language "uk" do
    sha256 "9bcccfe68dc94f8db076023dd9334d3efc0cc20a4ffc1906788fbbf1ffb13ad2"
    "uk"
  end
  language "zh-TW" do
    sha256 "7eddecb8801dc71c95c96b3b5fd17f0ea9cdc47816d1a896debbbe7392b1a803"
    "zh-TW"
  end
  language "zh" do
    sha256 "3295467d3967daa6e1e37a83d532391379e1441d036f34857b81a19ad1486b70"
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
