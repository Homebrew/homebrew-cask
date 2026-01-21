cask "thunderbird@daily" do
  version "149.0a1,2026-01-21-10-18-09"

  language "cs" do
    sha256 "5ffefcdd4758bb0b755ded4bec41654990658f0d23f10b6c6d9f293a239485c6"
    "cs"
  end
  language "de" do
    sha256 "97011a9ad1d8c523d2e030acb39b430ebb05bac7feaaec7be9f4d604eb0226f4"
    "de"
  end
  language "en-GB" do
    sha256 "e6b6b4107dc76b168dd939697acf6c53b0ec9773635cc10c26b8317686700a19"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6f4fa655accdd0f1aaaf13ca457c4d54c1547b1b03277b2db5387a31d0ec25f7"
    "en-US"
  end
  language "fr" do
    sha256 "eda97a5ce0ba5f371512856e1df2493eaf32bfb9d35435858e719a35cc82486e"
    "fr"
  end
  language "gl" do
    sha256 "9352798adb377860756feb429ef20adcf2aa4e9a9d70c7f7a3c06ae8d9c8eef6"
    "gl"
  end
  language "it" do
    sha256 "dc1477fd63266796bcbcfed47e2eb9685f20efa8cfb89ba27ff1e650b21dec20"
    "it"
  end
  language "ja" do
    sha256 "d5d6c000f4c749bc9dc052ebd75c15f5afab2b266781b94195e94acb6056b671"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cb01ec0aa821b6dc5d59b7ec460d97b86907c44f754c621eb57e7552bc4a0e79"
    "nl"
  end
  language "pl" do
    sha256 "dd7b729ef3583b026a4e8552278e54228a183a4907d523b6d2add352174ef57f"
    "pl"
  end
  language "pt" do
    sha256 "cc097b11b1e24cc9472b1541e8bf2adcd9a920ee4413fe6b7b769f123221fbaa"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fa815d00303b6a833df5c2fc03022ee02d58604480e33e80ac8c32f44832133e"
    "pt-BR"
  end
  language "ru" do
    sha256 "c937abffa2a678c97510e37f91440344ad81a2d74c09dfc77d6e9bdfe9630a2b"
    "ru"
  end
  language "uk" do
    sha256 "dddf4d3c421a92f1f1d5978307cc9bd7a8032fc5e467e588c0385b0d3dadf490"
    "uk"
  end
  language "zh-TW" do
    sha256 "0ff9b4e1aee8e51ceb64c397aae50b146a7302022531f325e5f0da46fbddbae0"
    "zh-TW"
  end
  language "zh" do
    sha256 "f059eedcde84042d196c7201f0e74fc1a929ef4e67dbd5139294b1cc00c81817"
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
