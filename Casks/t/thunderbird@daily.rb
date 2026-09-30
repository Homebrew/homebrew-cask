cask "thunderbird@daily" do
  version "159.0a1,2026-09-30-09-17-01"

  language "cs" do
    sha256 "b5fdbf4dfbe866142eafff9da3e690e67e8a1ecf7ac018fd869aa99fcc458a53"
    "cs"
  end
  language "de" do
    sha256 "71ae15e1fe56efb36692d0a892f94edbf476ecdaf98b5e0b0a68225bcfdfc302"
    "de"
  end
  language "en-GB" do
    sha256 "e795084067275f2f79694d298511cd572ffbcb722d087eeda12d0370a7a28cb6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9dd23152e4fa2afc99563261c43d7f504c81fd8bd05be17ab3015c1124baa846"
    "en-US"
  end
  language "fr" do
    sha256 "bff19ef7de7eb4067e7323032548dbf803a801a23b2394c4d9b1750bd4692fb4"
    "fr"
  end
  language "gl" do
    sha256 "482d0b1226ae52c1155606f86825cf0bd096471550bd342cba763c6569e35d02"
    "gl"
  end
  language "it" do
    sha256 "d2fad1ee72e801df05866fe05b8ebbf05789a49e8269068802b2470412c0c62c"
    "it"
  end
  language "ja" do
    sha256 "dfec14ac1ee4e23d253a54e92fd09d1e659796bc8904d4e9bc8684003babfe1a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "027d2661609a30ec87e290f4c75cf4643280cfb22004dcbf00c5669142b4473c"
    "nl"
  end
  language "pl" do
    sha256 "4c298a67c78fefb667795e2c84ebfaa79c745480788ddc2b1b67b10bcaa4a519"
    "pl"
  end
  language "pt" do
    sha256 "ade4908bc92fbca607e1098ce40a0f354834522f85fde1da627a669458f06410"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8d3979b607ab2ee561c81cc5606e8ede4a09b62fca43b0b94844327f87a1c13a"
    "pt-BR"
  end
  language "ru" do
    sha256 "91822d26c2cea70940dcaa2f72dfd8ccd024dae3d27c59afdcacc57f62f7d8bb"
    "ru"
  end
  language "uk" do
    sha256 "2a50c41f7173273677abc7d2ad9bf1199fd11f772ac6e3af2c1795ab2b13a0c9"
    "uk"
  end
  language "zh-TW" do
    sha256 "cc99babd11f4cd46cf5c168b78865ac472ae38ea6550fd8ce10bce060da2586e"
    "zh-TW"
  end
  language "zh" do
    sha256 "fcfb2a7d9a6f782f9b7ffa949b9f2c2a09bca0255234c81ace7d19e114192a6f"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
