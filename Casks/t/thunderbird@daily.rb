cask "thunderbird@daily" do
  version "153.0a1,2026-06-06-10-34-10"

  language "cs" do
    sha256 "c7fca63af9de5ccb1a25f9788c138d891d0052117457e5b77f1935a6d4734ef2"
    "cs"
  end
  language "de" do
    sha256 "40f09353d5e3adcec7bf5e54e074a60f2e7529e709ff7839dc6a05e51c1ac6cd"
    "de"
  end
  language "en-GB" do
    sha256 "d42c41d1525b91d1117e411ad5341f9e464e5f1648bdef5d7d3015ffaab54c08"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a05d63cc5d384d8c78cd56e5bbdf1075415b8dbf5a1c77793d3ace8bfbfa83f2"
    "en-US"
  end
  language "fr" do
    sha256 "af27da37ffe8cea95c5381fd0885d8b1a362c1a8ac23fd9ecc6ef858060f3fdf"
    "fr"
  end
  language "gl" do
    sha256 "fe2494bdf83238c8017b3b3d569d083d57c45a2280ada5c338c24aa18ea2de60"
    "gl"
  end
  language "it" do
    sha256 "e7b83cd4964e9a85947deb831014f757e22357c63a968eac8240e9ed1a3c9b45"
    "it"
  end
  language "ja" do
    sha256 "15f4dc89b23d8a072f53817fc055cbaccf872cc1181fd42cd24d84bee69b7a0f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cbd848b45a0f7517a0a35efc769822881ffd1564225c603a92b391cf149a640e"
    "nl"
  end
  language "pl" do
    sha256 "f728ebf67e1b40e5ddf8592e2cf412a6e9677d9605676884aa9621200f781c0f"
    "pl"
  end
  language "pt" do
    sha256 "cf9d6c4373c6f5975da78a23fa2fe67133df612ea4b7e313e66d7a61816d5dd1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e2c92d971ddfc901d96446dbd154de4b786e40494734dc23ec93d2e01af471cf"
    "pt-BR"
  end
  language "ru" do
    sha256 "aab63d323d6bd6a2e6a948db95e06314488928ae7d0f30562fe09c2a84a71f2e"
    "ru"
  end
  language "uk" do
    sha256 "b1eeb5cca80913dd6727053689c11f1dbea5141aec7525524fcd117383f3322d"
    "uk"
  end
  language "zh-TW" do
    sha256 "08bb012a1c4dd649bbdf60e136f7be678d5fc8382541179694e5f1fd5de29cc8"
    "zh-TW"
  end
  language "zh" do
    sha256 "9439f030cc90e21576e3c00e3ed59fb9a442836df8eefb94752c1af2d7f1aeb8"
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
  depends_on :macos

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
