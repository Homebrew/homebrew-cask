cask "thunderbird@daily" do
  version "145.0a1,2025-10-06-10-48-13"

  language "cs" do
    sha256 "bb3b1728178d02ef5a45d03b26688b8c0fe423d1f1811b344130bbc09fff2ebd"
    "cs"
  end
  language "de" do
    sha256 "4476c6eb39569152f81847519721fd48ddc4f76dc3de74c56c2ee1ada0d19b29"
    "de"
  end
  language "en-GB" do
    sha256 "5bf31e554e3e487e7a9ef1e8bc57245476192faac42ee1362e0c825dd44adac3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3a925ea20aff84bf1f8eab76cae51b120fea336cc47b1ca16941a9251b654ae4"
    "en-US"
  end
  language "fr" do
    sha256 "62a8e87498f0199a97759588ac5e5a9c76e75dde91823859447fd282b5d85264"
    "fr"
  end
  language "gl" do
    sha256 "5be427e89148c9a05b48a895bca4ea731701a72543f94ad79433f9d026d649a8"
    "gl"
  end
  language "it" do
    sha256 "c70c0b3d79d2185a268d3f9d464cedbe3a93104569c3ada1bf10174268ef1119"
    "it"
  end
  language "ja" do
    sha256 "76cc6994d3752c90a175c6a8a8a4ab4cd3a4436ff48415bf45fd8524b7f4c8c4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3a63044a3d6d5640910eb984cce6ac47758bc9a7b9906ae16a3c72eed6983250"
    "nl"
  end
  language "pl" do
    sha256 "984d65826204d7e96bbed44be636e5e55c1caa71e4dd0131ddf9621de0198d21"
    "pl"
  end
  language "pt" do
    sha256 "06cb34c3eeaf89fff6289ed7ab45ec2b93db00a29a1e66a459cb50a7802803e5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bcfd66b2946bb592f8437fd702851b4e944fc9e148fa98701fa0b62ce4e8dc18"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd97e910cbfe0d321b4b0b9d66598e2c6e3d086516d07c6ddc3ae42cec8d6bbe"
    "ru"
  end
  language "uk" do
    sha256 "2d12475e142f9d1f58cf1b4a12a26c16fe1e7a3a6ca723f3f01b58b12a091782"
    "uk"
  end
  language "zh-TW" do
    sha256 "9d7d1a37441e0a1bfc7d4fba2dff0b1dfa39c6e654a40bec6d2c1a44afc0e525"
    "zh-TW"
  end
  language "zh" do
    sha256 "1457be7f3d786a5df40907cb06cd0c3fe263fc50dfa7f589d0930af709ac64b2"
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
