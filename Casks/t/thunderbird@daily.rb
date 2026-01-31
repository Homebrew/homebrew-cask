cask "thunderbird@daily" do
  version "149.0a1,2026-01-30-10-31-41"

  language "cs" do
    sha256 "0e4d981666679c75464a2d706d881deb0d7ebc6d9b9cdf508baf22d38fcb75cb"
    "cs"
  end
  language "de" do
    sha256 "d9d5febc21220d5ad37b0b9d7b93f862e184c62bd03763d8d9cf0aea67d41b0f"
    "de"
  end
  language "en-GB" do
    sha256 "c99440ffd58c2d610faee648d9d92aaaa80c6511305d64bfa6028e0de0f2eb1a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5f4c8e255ae0cae697c732c65804cfdd7482656a05cd5675bc58ec99e73670d8"
    "en-US"
  end
  language "fr" do
    sha256 "8c30657870985a47863dc55b5e812a64bfbda4c12e83d9e129715f544b436f0a"
    "fr"
  end
  language "gl" do
    sha256 "fa1a8d9f18fe1d2b17a5ea6497943982a890122c206ff373575380a00518eabc"
    "gl"
  end
  language "it" do
    sha256 "aaf47ee73920039b256f15b54edb27ae059dd24db09af1db3aa0fe7b3f41f05b"
    "it"
  end
  language "ja" do
    sha256 "878514140c93ac4c56ed9e1e8ba6633b9a96a5449b89fa5c046188226d0945fa"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eef56859ef95ff1323ac7d4cd13874b26bc6aa4310b8597774125e7ffbb8a9f4"
    "nl"
  end
  language "pl" do
    sha256 "8e38e5fecf19bed940d338a23187dce3e246db732c8c38347fe424d3b436eb18"
    "pl"
  end
  language "pt" do
    sha256 "bfa837c319293815e38f36d888679c50b709b58cdb5bf360cddd40936ee2b8db"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ae54bd3775bb980cd512ff34f85e683f5caca369d01a93866dfb6eb9476bb6fe"
    "pt-BR"
  end
  language "ru" do
    sha256 "3effcfda4e3a61db613684d04cb2cf2a826de1d843bbe6438976710c82cd5162"
    "ru"
  end
  language "uk" do
    sha256 "33e53bab22cbccf30836c841d95a0d76e1316f09359ae8f4fb200a351c9d24d7"
    "uk"
  end
  language "zh-TW" do
    sha256 "200ba71911f0c1e93c14a8d9fdccaaaef9862e0623e4be6123e09c2643fe534c"
    "zh-TW"
  end
  language "zh" do
    sha256 "4fe11b38d4079eb9dbf5912915b7884f52d1f38f0a2c8e962632fda491ba39a7"
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
