cask "thunderbird@daily" do
  version "141.0a1,2025-06-18-22-12-29"

  language "cs" do
    sha256 "0c3121fd0a9ed3c9b771fec0bc256046298673404006f6d7900b1489723a677d"
    "cs"
  end
  language "de" do
    sha256 "567a0de1e4217e1fa4e4fc70896204d4745210cb9bd23ea609bb55360a8d1252"
    "de"
  end
  language "en-GB" do
    sha256 "63d8470033d219b386184660ab17a7cb7c01339cbe3a2ea68dea51486e325f4e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6f3c2393bb5ba7efe6986f4f9cec1a6b52a1170c338c72fa697a84127418fc66"
    "en-US"
  end
  language "fr" do
    sha256 "4a2e6a140ae31162c1165c2274814b8990dddd52bdb78ef8e5ff4d03e56fcb4f"
    "fr"
  end
  language "gl" do
    sha256 "54bd338ab33e222466d905a7181d85683115516303add8ec8ff07f5a5e422b36"
    "gl"
  end
  language "it" do
    sha256 "682f7ff027acec5c42be1af7bd53b56ed8a261990b87eef5ece1ee634bbea286"
    "it"
  end
  language "ja" do
    sha256 "b5b5981207b73a538b51c64b55de26c9d5b0dbcbfeb3388bb60ed72fbfce0b8c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "13e88ba2afefde00a982939c23927183cbca91abbffe7157be31fba132f077a6"
    "nl"
  end
  language "pl" do
    sha256 "bcb6c411d59c7f1ebad95dbc000a72fc41e60750ccaece0c17acd89b167091b4"
    "pl"
  end
  language "pt" do
    sha256 "619e8255ff9a8accc9e34435d94e185615c0fb558c774cfa871ff5f05b4c0e31"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0e0cc4cb75bb81748ce8b389f92242a133f7d5d3f2d841dfdb5371bcee16c01d"
    "pt-BR"
  end
  language "ru" do
    sha256 "c7b273dc9023223de5f7076597e8ceb152a29420d6b3f3e864d1da0e82b450bb"
    "ru"
  end
  language "uk" do
    sha256 "16499b05a3b37bbce7013f210e889ecbe291cf1b1cb44ae19ab1e2fc2083fcfa"
    "uk"
  end
  language "zh-TW" do
    sha256 "5162a80cb4d8f4a2b5eca70a9f4ea5438b889e285a887673957aac25dca6bee1"
    "zh-TW"
  end
  language "zh" do
    sha256 "3077c6ac3300b23f9b3015224af3ae8f37e92ebb37b33f0ea7629e46b98b7f43"
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
