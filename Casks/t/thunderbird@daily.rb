cask "thunderbird@daily" do
  version "154.0a1,2026-06-16-09-56-31"

  language "cs" do
    sha256 "1e88607b583e5f2c876d9d5d59f5a98f6a04d5926d134d747ae3f2ad41d55559"
    "cs"
  end
  language "de" do
    sha256 "ea15a9027f8b335df144aac7dfb588763a72a8025389e8a66665dc5ad2286bd3"
    "de"
  end
  language "en-GB" do
    sha256 "72ab9a9b49511c6c1b69495f719327e0307fa23745b3f4ee0706790213c9fc1a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eac04f23603674028db41e242e9732def99666f80a1f0ee35c70b4d4856aa26e"
    "en-US"
  end
  language "fr" do
    sha256 "43032057008344ff396017fda1c898bc6d6e5688764a17559ec75c6a9e85de88"
    "fr"
  end
  language "gl" do
    sha256 "e35fe083df64b19b1765e5a8dfd75d48a0b843a4130ac1997e3eb519074db310"
    "gl"
  end
  language "it" do
    sha256 "32573316570282833074c6df0f6114adafb75bbb922e5ca14367f731bc431bd5"
    "it"
  end
  language "ja" do
    sha256 "825cd25bceea26cb70b960804d76dc9bb64ea8b97954824548b7cdf98556d602"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "66501b446498355dde29cf9e19d3d471f976766b1596a43cbb83f34428e5fcb2"
    "nl"
  end
  language "pl" do
    sha256 "de783e14f6f73641e2a636c83d49b62d27046d74ce89141d7b7f36f04fd119bf"
    "pl"
  end
  language "pt" do
    sha256 "8f25e459e5f1c372c83c10da4ded4ead975fe561409ae9ed0dd6f3158f05d47a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3afd7943126fd84a626bf864246f2e85474ad4e8eab570118a91e2240ff1af60"
    "pt-BR"
  end
  language "ru" do
    sha256 "4deaa1292ed9b77487ba4cbcefbf54d294e44f9ca6cea5f4294d2394391041c8"
    "ru"
  end
  language "uk" do
    sha256 "d938a3c5d14f68d4c09b07c8e407e590a020c711bb51b955217bee18e8947475"
    "uk"
  end
  language "zh-TW" do
    sha256 "4fd8adcb91c97299308df15cdf5a9c404bb1693811de8a5c21bfb60d6ecece72"
    "zh-TW"
  end
  language "zh" do
    sha256 "146d49b910a0db769f4f83bedde8981a39b6e947c63eba073178ece9cb29a7da"
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
