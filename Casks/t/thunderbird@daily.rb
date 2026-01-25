cask "thunderbird@daily" do
  version "149.0a1,2026-01-25-06-51-44"

  language "cs" do
    sha256 "eb85d560ed058e0f25ce835e7bfed02dfc3f7f6b90730be6f75dd41616bcb57c"
    "cs"
  end
  language "de" do
    sha256 "7486afbf04f811ba8df4ea113caa09d1a3e87b890c3f198d93d85a049371ac7e"
    "de"
  end
  language "en-GB" do
    sha256 "45ebdd079a28c4fa08e8bab190a52c3c1f6a4d896eb821cd5bd216f21b893981"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5b3857f7631244fba245561f9efbddcffac3d373aa997a22249e475a6b983e57"
    "en-US"
  end
  language "fr" do
    sha256 "7376b8037af231c82ba40afb9b429f827fc43165c8c0b474e3a1c682d3d07a6b"
    "fr"
  end
  language "gl" do
    sha256 "0c5544db12b00606932a6e61f0fcf44c4047c32175edd4da4eecb6c0640642c2"
    "gl"
  end
  language "it" do
    sha256 "82d816a88e50c1edb0c5a05f91a3997fab442dd64d2569a22ed85f83ae2bec3d"
    "it"
  end
  language "ja" do
    sha256 "a6fed61c0f68953c94fb99b4ae0e1d88d9afe6f02f711efc70f47293aa164386"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "268beb04990db0ab04eeaf17d9ff692b277f9e97d1054f5c56d53b27bb0ee7ba"
    "nl"
  end
  language "pl" do
    sha256 "924e4c57859e9f9736e7f0a28b984de35193fa57355cffaf3323cfecc5e13798"
    "pl"
  end
  language "pt" do
    sha256 "165754b66725fce01d829ddf72a31ec5b02a174ccaa14d0389ad1a927ca75347"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f269d11b410bfb2f5aeeffaaa04b675748b9544d562902cb4aa1974425c32063"
    "pt-BR"
  end
  language "ru" do
    sha256 "10551f14567742be524de4dd29fded2bc19205621566ca8cac476668c018c3d8"
    "ru"
  end
  language "uk" do
    sha256 "66c65b9c63584fa5b65a7951be7f50a6dcfc404c85cc69d40ac2030f412bebc7"
    "uk"
  end
  language "zh-TW" do
    sha256 "c136f6311387c8f0c55d19cabfecbb85d14cbd2b6d8bb3ce71bcb9fc237bb070"
    "zh-TW"
  end
  language "zh" do
    sha256 "d35c2854f1d319295b9b8d2ec9399691ec39c55b603c19ca2d23a7daed115891"
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
