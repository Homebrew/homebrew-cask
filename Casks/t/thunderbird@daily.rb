cask "thunderbird@daily" do
  version "151.0a1,2026-04-01-09-55-39"

  language "cs" do
    sha256 "5908ea88cee1af9d5c7fd0b1a549d5225809a1b51ab7bba16ef3dfe0386ba144"
    "cs"
  end
  language "de" do
    sha256 "737367b645f391326fa829bc634109f52c6089fc5c0af488085e0ccdb241f58c"
    "de"
  end
  language "en-GB" do
    sha256 "79b7a0ac49bfd461f5a09472e3ff5bdfb18530e09a23f77a0495a097c063cb2a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6a91f7ce89150ae682cd075702cdedc58367c7de665d58a65dc59c22372554bf"
    "en-US"
  end
  language "fr" do
    sha256 "5abb02a25a11375e6128fecfee9f892e501ffbeaf3725265026aab7c1739c6d0"
    "fr"
  end
  language "gl" do
    sha256 "0f3043fd5b97264c53332c868e0627e2a737f9f378bc8bf96bd92eaf20899bfd"
    "gl"
  end
  language "it" do
    sha256 "7c395bd6315c8849445129660ea998892154931f02d72a18e8987c1812b7c4b9"
    "it"
  end
  language "ja" do
    sha256 "115bc5c208164b6c70447add5b93cba47d3d4210bd66310efbb19db1f6d9b3a7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "393050328ee20460b7f5f11acf044be25d800d22bb98d556a24b7e488668ab5e"
    "nl"
  end
  language "pl" do
    sha256 "654328bb2c14e7e2020a7a282c75f493f51d3fe94a221b27953017da664e662d"
    "pl"
  end
  language "pt" do
    sha256 "899eddc628ca260ee25310504ccd14aa2fe754386e2c4675113caf68e613161f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a5fa80b8f313d7219daca8a8a4db0dfe12aa23f9b865a7d194f6dd389fa6981c"
    "pt-BR"
  end
  language "ru" do
    sha256 "aae23e952fcecf7ed43840bcc9d4961c12c668aede359a8d50445edd661b435d"
    "ru"
  end
  language "uk" do
    sha256 "340cd16ed2ae082dde24431fe4a8c6a95572be4c978be6bded0482a19a2f4f81"
    "uk"
  end
  language "zh-TW" do
    sha256 "c6478923b7f7bf9e162ba59659f1932378fd7f617b7e1d3dbbdd46fa6539eaee"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d49123be8e5f8b889c2d4f0d0dbe536dceb0be45c4c6e873101da9a75322b0d"
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
