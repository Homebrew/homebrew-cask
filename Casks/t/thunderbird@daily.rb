cask "thunderbird@daily" do
  version "148.0a1,2026-01-09-10-58-20"

  language "cs" do
    sha256 "f8d48e56932bd456ede323a26d6bb923f4f11159fb08b70dd6b5f9daa047b558"
    "cs"
  end
  language "de" do
    sha256 "226487767a3c4800696b76b01d30402eb41705ca96a28cb6d093ba1e6d9e4927"
    "de"
  end
  language "en-GB" do
    sha256 "18935fd00e0d25add6fdf231b5cea312c324811715c2c7a9482dc66fdb5c7bdb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd59f3893b583afdd0b952e59acc2c0cb31e5a276725870eefe75f0fd0814838"
    "en-US"
  end
  language "fr" do
    sha256 "582a17287f5c75f390c473df42038540ff8e6ad17311505621a4840866c8962c"
    "fr"
  end
  language "gl" do
    sha256 "2ef19e27e6eeac3ee0e58d79d1acb3d1cde4b8a9d16591d1b6fee4365f423d91"
    "gl"
  end
  language "it" do
    sha256 "6b30f52bd226a119235525c782093c38e0b8d40fb1fdb34d638ab9d544ca037e"
    "it"
  end
  language "ja" do
    sha256 "3a53eb984a9546b46c311eb55e9b5a7039d4e83b96cda9bb557e5f3a5333feed"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "90df652c5c83c1cc1194a49ef8e17b1052d3be64e3aac72283f74db1f558713f"
    "nl"
  end
  language "pl" do
    sha256 "6183dfb17aa15302d3103e28655b8e18464aac2697bb6de0b1f85a254ff06e13"
    "pl"
  end
  language "pt" do
    sha256 "fedc781bb71a99bf4c938e14df791cd017823508197c601f3e84fff847d769be"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "44ad7a2e0eff50594e58bebe1a7a2ea5a7aea21b6d3aae1499da6de50bc2eda1"
    "pt-BR"
  end
  language "ru" do
    sha256 "3e87ceebbb152bf0d26e7585fd427cc7324d3ae6285159953a88dbf8b8b49958"
    "ru"
  end
  language "uk" do
    sha256 "78c8675f23359410720aeda1b1ae9c95db31e1006b0639f3e38985f69e977eb0"
    "uk"
  end
  language "zh-TW" do
    sha256 "52487a8d2a53edea496f2d27cc3a5d5f4b1d20ffec51c841f5c41b3ccf4bba4e"
    "zh-TW"
  end
  language "zh" do
    sha256 "d6f71f61547e72f121f145a1f06a55bd15949dbebd9902ba40b8543e649975fc"
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
