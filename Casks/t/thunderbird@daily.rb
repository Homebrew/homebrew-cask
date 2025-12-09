cask "thunderbird@daily" do
  version "148.0a1,2025-12-09-10-35-54"

  language "cs" do
    sha256 "2b1832cb029542c98acf6ecf08848308f0bbd0f2e79de7743c16402fae7793da"
    "cs"
  end
  language "de" do
    sha256 "4affcfb285ef8712ea9afa1c43a7828ca82d8490bfae69babfe8904141048977"
    "de"
  end
  language "en-GB" do
    sha256 "a358827a7bfecbce385c66148c78d2bef8da351fb21ff26e6dd7d1b359e1efc9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2e4878688dfa8bd52c0ba742f2e621c78429f5321131c9f3c8bd14d628d63981"
    "en-US"
  end
  language "fr" do
    sha256 "e056500b0c58aca1db70e5b180e398e2ecf9e669eeca84bedab6f8fbdc877205"
    "fr"
  end
  language "gl" do
    sha256 "08862d89ea609f461b00385315ea5d4e34893e79a8152442319bf2e54fb4f064"
    "gl"
  end
  language "it" do
    sha256 "7118e7403bbb9f9dd4a825847038178daf98eb5c2d221537298b4a05c556462a"
    "it"
  end
  language "ja" do
    sha256 "54432c4ea341cc045d5e08ecece618868e88e4271c96b2f09680d346bf426649"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2d4a369be52bd46e27bb0086df0cb6a76e80e2ab7b6adfe2cda8bd9cb0c0318e"
    "nl"
  end
  language "pl" do
    sha256 "b75a392e2b3eeb1ae532ad3c2a9c329d9cafae32d88adb4fe0a634c7412c45fb"
    "pl"
  end
  language "pt" do
    sha256 "f653e647316228ea7c516bb3bd6e16b7c3423420eedd255079243acf7b8725eb"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c544f51dd615d5a3e07a3b906ef26db7b94ffe071557118a3db4b26267599f85"
    "pt-BR"
  end
  language "ru" do
    sha256 "58274795e3483570a63741a128cd5c279225d0b0810d21989386ee802b578304"
    "ru"
  end
  language "uk" do
    sha256 "166d0084b7970454ed6292c0f14fbbf9dc9dff63fb8071e7c5df1d25b96eaf5f"
    "uk"
  end
  language "zh-TW" do
    sha256 "25b6a15aa9efc23637ae73613620ee3d3a0b645d1e59a3b323741cde4a5c9c1b"
    "zh-TW"
  end
  language "zh" do
    sha256 "c280e1c05ccabad3dc82db3657d3c0b1d0fda7d25f4e8bf311b48d6794d68591"
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
