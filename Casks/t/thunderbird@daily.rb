cask "thunderbird@daily" do
  version "152.0a1,2026-04-22-10-55-50"

  language "cs" do
    sha256 "f6c9724158c84f1cf8d4ef628ddf1b96faabae7a0e7c4549288c52f8c429223d"
    "cs"
  end
  language "de" do
    sha256 "a6b0d9b555dc2d3d3f5fed73930e6a09f414b708ebb2cfdf1fabc1cbf0a4da43"
    "de"
  end
  language "en-GB" do
    sha256 "e88bbc304df27b2103e2013146e04ee5027a32db332fe0d4d6039c67822c56d4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cfe08e365c3443751a5b80b459a30b34a8ce1ea549b66fad14e4e3557712686e"
    "en-US"
  end
  language "fr" do
    sha256 "9056d52d0815a1cdb59998d7d56721852bd3041f6ec83244c9f4ac79e165a94f"
    "fr"
  end
  language "gl" do
    sha256 "0481a26aacf9157ef3017f22d6bb937662bd5c99678e0a42c21e8607ff5bba10"
    "gl"
  end
  language "it" do
    sha256 "8b02bfc875286600b94e4248da5cbca19e82543ad1e659ef338705bfabcdd4c3"
    "it"
  end
  language "ja" do
    sha256 "546522d13c63e5f56499c6fb3a160ce1bde605095d5843a3421c2958e50b6ba7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "933b71efcdd04f1f878470429b25757384ff41568e5249ac62abace6f165ae5d"
    "nl"
  end
  language "pl" do
    sha256 "af83a060bb6ede73b796be850d24760a5ed2f0f48076751ffb1c999654e76f9f"
    "pl"
  end
  language "pt" do
    sha256 "d9c55268eaa78a940af30ab57bebcd6c83b024acb6244dada80e9fffe4698e73"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e20eefefaa3bb00f114ab6d863ebf6e1038dcd81186bd20744602c2308afe448"
    "pt-BR"
  end
  language "ru" do
    sha256 "1d8d6269ed53a426829f81580ea013e54d99faf255a00c14f2b21f305a0eb306"
    "ru"
  end
  language "uk" do
    sha256 "740707cdb2bda5ddee53cfc4a7617db6564f84fcf011dfe1f5817af537e31c9f"
    "uk"
  end
  language "zh-TW" do
    sha256 "555aac9633fcc37d719eb15827b6fad26165be9b6010c91f1547c5e7888abfee"
    "zh-TW"
  end
  language "zh" do
    sha256 "88df26057390a152b35ad684659bd0ec84ddfb75f96d2083ec1f66f40433733c"
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
