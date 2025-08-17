cask "thunderbird@daily" do
  version "143.0a1,2025-08-17-10-22-28"

  language "cs" do
    sha256 "79f66a97c95777ec84b2526123fe1c8e31a5c22206865cfd9036d3462d79b5cc"
    "cs"
  end
  language "de" do
    sha256 "255484b7a9a40b1fba0bb1f7fece42f87b67a4a7f141616f80326df4d270ab73"
    "de"
  end
  language "en-GB" do
    sha256 "8052d923f262eb6450805cdb7f3acd79cd7c0f9c68b6c010422289b1fccc75c0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c87394a04a3605827187c7439ed4df20be5418ddf8da150380fc3b4fee5b09bd"
    "en-US"
  end
  language "fr" do
    sha256 "243124c5b748176d8e609bf81dab5ad5b2944f8c52fba45ec14ee28155093e41"
    "fr"
  end
  language "gl" do
    sha256 "476a2593644a4a9a44faa9ad0f5120076250d24f5ed65c303075bc95c32ce9ad"
    "gl"
  end
  language "it" do
    sha256 "bde7c2c0921bb813e94e21ac7bec056491c497ac87e3a018ce0000426d96a4ba"
    "it"
  end
  language "ja" do
    sha256 "3836d2f17284afc046714d68acf1b28e4b66e9307f6a59a37624bf9b06b3a436"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5f9a66b3251f9625fce0b387ccfbe0ac52f51c22736922146c5f6deb9cbde033"
    "nl"
  end
  language "pl" do
    sha256 "92252fa1d7cb4a88c4f7b7cae5074fd8810e67c3693a5a58cacb36025df12107"
    "pl"
  end
  language "pt" do
    sha256 "dc9379b6a4c57f7c5f5097bd0d9923cce3062890b2585ff4f17b7e2530ff42e3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "503ac8a33daf572080727588aec08ddc7ec864ed49643f1855d9c8e1306d383c"
    "pt-BR"
  end
  language "ru" do
    sha256 "dcae8f14a74aa427ba0f8d82ad0e509966b172dc56f95eeb73c3c22240f46787"
    "ru"
  end
  language "uk" do
    sha256 "f66337dc3bce39a0045d0b46032851824550afcd7ac63ec5a860a1b5dc8c0c4f"
    "uk"
  end
  language "zh-TW" do
    sha256 "c2d886852dbcfa7daa12dd8e1c5018b980ad23169b74df4d4694630cdd28a796"
    "zh-TW"
  end
  language "zh" do
    sha256 "f22b596f698270235d4dfcf64c28d8a4d064a25a646b15ff22289a9cfd072cc3"
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
