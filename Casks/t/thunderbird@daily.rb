cask "thunderbird@daily" do
  version "145.0a1,2025-09-26-10-31-07"

  language "cs" do
    sha256 "4f106c30d0c00d3c00c764ed0ed62a827f8775a78b8d6a5c9d8538545d1745e1"
    "cs"
  end
  language "de" do
    sha256 "ed9cc864c17a6cbb11b0d22b089cb8c8b7b58f95372a2715e6b1ca16d4feef94"
    "de"
  end
  language "en-GB" do
    sha256 "d3b881b78ba86275e5462fa1897b1fa9fd8bac28accbbc3cfaaa2afecf837366"
    "en-GB"
  end
  language "en", default: true do
    sha256 "86fc2be9b0e54c831f62fce2c5cdbfd13a0054735bf7484a1968db9483fb01b9"
    "en-US"
  end
  language "fr" do
    sha256 "434bb7634a0df2dd05f1b896d5d9e8ec6d802e36d3bb5d4b004b6d8594746b28"
    "fr"
  end
  language "gl" do
    sha256 "b682e937624ef3d2687525a13017ed0a70e4d19257d4fa22ccc3da0fdfdfe00f"
    "gl"
  end
  language "it" do
    sha256 "5118202c40d63835cc56ed303fea2356f6e09166d59c9e6c179b6416f62a14bd"
    "it"
  end
  language "ja" do
    sha256 "48b6bc0641a477d148fd9cf0db5a02160832ecaba3bcba6c48ab5507a3e8c1d0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e04ff2e98f378e918c2c11385319f98d6798a9fb14baa6ef7561e6f08d86f1d0"
    "nl"
  end
  language "pl" do
    sha256 "a256ba78cc9d4e7851d377f7df048a6d66c53217a966ec5708a02d18357ccd7d"
    "pl"
  end
  language "pt" do
    sha256 "aec9d052a18462f6b0de249450f7159d693831ac34c665ff3043dfa2bff48eb5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e42b4a2a2b24486a821b47b4b68e8412282bbcdaaddc06c76e8a12ef40649be9"
    "pt-BR"
  end
  language "ru" do
    sha256 "3dd0d68a6a2a50c2c215caa43e51c29b9abc21801ee66fa41c07a2d6a6309272"
    "ru"
  end
  language "uk" do
    sha256 "7d110ffb269f6dde499d5ce46a9292cc21243e208f7a19277b5bb2b28983866b"
    "uk"
  end
  language "zh-TW" do
    sha256 "5919940a55aaaba7b2fd4be83cc53c34b0e1d1a7f789d1c518258a02e82ebdf0"
    "zh-TW"
  end
  language "zh" do
    sha256 "eb589d7cc9b7f971e0cc4b0cf2925d8cb119ada4f9010601f20ec92831ce5fcd"
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
