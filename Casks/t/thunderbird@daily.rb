cask "thunderbird@daily" do
  version "146.0a1,2025-10-23-10-32-12"

  language "cs" do
    sha256 "86a076bb1e18a491c4563f365e20f36a85e756dcf4c797855207f2503dd0aa30"
    "cs"
  end
  language "de" do
    sha256 "dbd958747529f6813b3450ed0180f970f79ba13c2c123160791cb7f58f9debd5"
    "de"
  end
  language "en-GB" do
    sha256 "2f29b0ccd227042f7a5c5b64a4e98d2919a6f0f88e526bd5d6d9aa119e6bafba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1264a67e0f4acfb90dbe4c630330a6ef94781d3120a559f270c5effdeb6f846e"
    "en-US"
  end
  language "fr" do
    sha256 "0f6cafe4376f62dd620d209bfe16dc6e110c7c7d4b32e75f724b0166e479543e"
    "fr"
  end
  language "gl" do
    sha256 "9b51f72561f0558bc3b2ab4e462a3895e18adabe21ba4f66b08b5309c9a6b174"
    "gl"
  end
  language "it" do
    sha256 "e57515b9ba4dfa9da18caca9e8044f2c45a32b69b76c71f8002ffe9339e3bd27"
    "it"
  end
  language "ja" do
    sha256 "298aa9c74deebef13e50409767740acd5fcc2e1af15284abf1689131e770608f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "de50437c097d55888bd69fc8aa75145d2fa7de5ea04d1eed8e32aab7b23d19cb"
    "nl"
  end
  language "pl" do
    sha256 "5648dca16120729aee767c8764323c0169116e338d587a785bfc828ec3ccb986"
    "pl"
  end
  language "pt" do
    sha256 "86c4c834c51631cbda71e69c7e8f35212cb19a6abf21ab31571373c7a3311d2e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d4706bf27153286b5631bf06dddd51678bba26faee35287b0cecf41ffd8f326d"
    "pt-BR"
  end
  language "ru" do
    sha256 "64056800b6d78564341452ae4d12066b392ee1ca13fccf69d2d802eb803c7197"
    "ru"
  end
  language "uk" do
    sha256 "c0695422a09bf0839fa5afc2203e3ad111a1269bdc1028a3241a9948eedd050f"
    "uk"
  end
  language "zh-TW" do
    sha256 "d28b12c1edf352abbffa4f639a24a4dba274ab9349272ffddb922b73c25f6831"
    "zh-TW"
  end
  language "zh" do
    sha256 "45e7ee085e3c050c25634fe343f62b8b2ec7a569672ee6a79a91a0ec89edb230"
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
