cask "thunderbird@daily" do
  version "149.0a1,2026-02-08-10-55-43"

  language "cs" do
    sha256 "262ab89e9215259d6d9beda8d7d30e1662623dbde903d4800f738b73d5dc19f6"
    "cs"
  end
  language "de" do
    sha256 "aa2da9da9ce43c0c0e55335339c2d88e428f9b3eb6ae3889ea22b7a411cbc9a5"
    "de"
  end
  language "en-GB" do
    sha256 "845536c415d06b7f7b22a3f68a855b27868a00576da6f676e523efdf887cb4c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4038bcdc76928e5b4a9d48be039e35a5b675f504811a1171764832fad5a57480"
    "en-US"
  end
  language "fr" do
    sha256 "a50f4245d0881e762e554ae47528a92bc581fe19835d64e0db05ad2c26d9940a"
    "fr"
  end
  language "gl" do
    sha256 "edc5bdbcdc1184a165ac293f223d830ceed8514bfb5a8c191d2264ec9fe461ae"
    "gl"
  end
  language "it" do
    sha256 "4b7969c6b386de8c3d8735ebe4c506f37731b08351b5513f46dcff9e7ff9dfde"
    "it"
  end
  language "ja" do
    sha256 "e9276c0b5ed622f82386557ce233371428434f8cf966c09aa40d5ddf02d0d327"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4f07b125a189ed2d2b31d5237f4bdb378b6dfbc1a9970ddc0d5ae31131360fae"
    "nl"
  end
  language "pl" do
    sha256 "ee2626cbdcd2a3d43d2b17dc433907514ad033318959df852ce4e14278a28848"
    "pl"
  end
  language "pt" do
    sha256 "a8122c2d3347c5370f600959b4402d09cffe45cf2e2975424d4452062b82e5b0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6e092f066f83cbc35ffd50276cf5ccd99f12382f8790fc2b53934bcef4f13cae"
    "pt-BR"
  end
  language "ru" do
    sha256 "2f5a2614c749d07b4b32b85f4ca7879620901068140f31c4bac36dfa3df7749c"
    "ru"
  end
  language "uk" do
    sha256 "2abf19e7dd48ba93445d3affd38466c9f140b720f78f5c0ee2d6cb2348bcf5a0"
    "uk"
  end
  language "zh-TW" do
    sha256 "832dec4b07dfcdd9dd465aac61418e80bcd0a0e6e12f2074653a075655538d61"
    "zh-TW"
  end
  language "zh" do
    sha256 "9ac229a9e1dc94d59fd729dae6a320b55f76034ce62b109722e3f06d8f04b434"
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
