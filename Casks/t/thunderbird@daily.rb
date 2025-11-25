cask "thunderbird@daily" do
  version "147.0a1,2025-11-25-10-28-48"

  language "cs" do
    sha256 "e8356246e03e3f3edf0938b3564bea8794def2e03972a1f7388824ddc4a5e7e6"
    "cs"
  end
  language "de" do
    sha256 "7c088d82fb863cab8035ef82afe06810346d30e2e81f5cbff8bf53ab48b92fb0"
    "de"
  end
  language "en-GB" do
    sha256 "3a449d80727cff1670ab7cf7fcada09cdf8cb17917759fd54c62e294b8b33c5d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9706ee0e32856cfea161836c9100a7e6438903556845be490b2552542be24a8d"
    "en-US"
  end
  language "fr" do
    sha256 "260cd15093368bf684fa43e46182476551f1a7b0c9368ca2bfe4d77124214713"
    "fr"
  end
  language "gl" do
    sha256 "2e29b52a43859dcaa16044acea1a2c20775eec54afce15473c8a3375b54500e6"
    "gl"
  end
  language "it" do
    sha256 "4445d1f439c38f044492592504c2b8978cbdad04229b149a0326f97808e897ed"
    "it"
  end
  language "ja" do
    sha256 "ec7668b4be9dfebe49dc6c6f35512eab3007aea78501bb6c41ca731c92d85d18"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0ef828180ecb1bbd38a93a50e2f36207bfa71e3c24504b976c8c0d14c3e33af8"
    "nl"
  end
  language "pl" do
    sha256 "8539f7da16e3a50ee35c886f991bd716e722bd465ebfca7f5f17b41a0d6e8fc6"
    "pl"
  end
  language "pt" do
    sha256 "fbc992f9d8026314eaf5cc81db75c4cd32bd186adda8b09d831afbf6a731fad8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ac30a5b05818d60f6e4ab113f354445c798885137e0f3d63d35467ef19029726"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa4ce70e8972620129be850be0a9eff61f21a9f343950d2665583bb347436eac"
    "ru"
  end
  language "uk" do
    sha256 "e54c8c38f847711033013c7ee4ed6fc19c52a7f6ace190bfacba00d5149ff280"
    "uk"
  end
  language "zh-TW" do
    sha256 "a739f07f93b5e265a6db667c6864e9da231d7dcb0153254b192fede30c88c95e"
    "zh-TW"
  end
  language "zh" do
    sha256 "625f2b02e1255d8b7ff2490f38ae00f576a4420c88ec3aacc49d9035070b7ada"
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
