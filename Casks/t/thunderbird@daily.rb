cask "thunderbird@daily" do
  version "156.0a1,2026-08-21-09-56-15"

  language "cs" do
    sha256 "9bc108c0cfa47017e8958540bc55b81271a7b4122cc9cb1630273d529b55881d"
    "cs"
  end
  language "de" do
    sha256 "19b6877d7c14128f5d8e750f71d211397620d919ecee61ff2b7fc81fa80cb8fc"
    "de"
  end
  language "en-GB" do
    sha256 "94ec9d5060be8ccc8131f205ad6bde0c4c17d0d124126a69b21b367f9bf962a2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9e54bc68fa081f6a470966e4d04a76bd56662e4f73cf410e73e50bdea75dbf77"
    "en-US"
  end
  language "fr" do
    sha256 "904cf0f2e7fbdd8d25572d57d3addc5b7ae419823696e4fbc9d5c574e103b4dd"
    "fr"
  end
  language "gl" do
    sha256 "e9e164b4a2c3e7891f4c747cc55b6a5804e6bf7e1594ce3d960e367ddb3745f5"
    "gl"
  end
  language "it" do
    sha256 "e46e127f721a3588372ddf2fbf8466ccc0acd366bb4bee258f4321e132c15f19"
    "it"
  end
  language "ja" do
    sha256 "606a122f5b5924ad10124d4037a3565799d0828abd7029bdff613512837a05bc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cdeb9a676f2ca40136f09ec583e975b8a43db36f890609f6a38751ae91e1091b"
    "nl"
  end
  language "pl" do
    sha256 "0883ddebab078568d4d8e2ca137f29767786df14a2525910d9adae298abdeb99"
    "pl"
  end
  language "pt" do
    sha256 "6c5831ccbfe6ed760fbe46020e7c0e22193fba5c785f1671886bb12b77528994"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2ca7b109a70376f2d5aac4b653cbb50533d9e4151c0a55f01e305f1038fde999"
    "pt-BR"
  end
  language "ru" do
    sha256 "068da81957a593482f4fb7666405cd3ee1c740c3721f6729c04d4642cfe4368e"
    "ru"
  end
  language "uk" do
    sha256 "346e18ef775fa3c77446f9623da186d16c1666a924aa1c3cf53cc7412e28a3d0"
    "uk"
  end
  language "zh-TW" do
    sha256 "bf9c64b59a3b4acd4e60fb93a4a51efa8ade6ecb40e1f5054413340d08bb3ee0"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd4c647c61dee7b49c3f31497efe1cedd98764c06fc867709b924a3859f7517b"
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
