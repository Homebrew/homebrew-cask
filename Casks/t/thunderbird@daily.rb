cask "thunderbird@daily" do
  version "146.0a1,2025-11-03-10-44-52"

  language "cs" do
    sha256 "78169aefe375c485293fa6690784ca21dd85c984444ea4c66c574cfa1a9ee1f4"
    "cs"
  end
  language "de" do
    sha256 "c233af37f106789bb105e5e88ad1b63b46b1e5be1e986209fd7e1ddfce95fb53"
    "de"
  end
  language "en-GB" do
    sha256 "5615c5207965b12d39124516af34c41db515100570967de5d8381209a6724262"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e527a12d23ef27239334fcd0c70532f50ee86d0dd98626f8ecc6991c3c4c34b"
    "en-US"
  end
  language "fr" do
    sha256 "2eadd85cf22da6cf2d0b067a84ca41a5bc5cd9d996c3863dc467f69a64348c3d"
    "fr"
  end
  language "gl" do
    sha256 "e143c5ab38c59d0d7659c546be8ecc0d7ff0f5e1d6f6b6feea101e92e0d0d91e"
    "gl"
  end
  language "it" do
    sha256 "d7c7589bc8d8d7682b8161ea5a6786bfa4560e84ca24906ddd4452bb70f7b0e4"
    "it"
  end
  language "ja" do
    sha256 "c032f261639c9ea40c6c0a2898bcb4f47363a5baf75fefa67ec002d0686177ce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e35a941c5a893bdeb95a405f41662feafb7def1b672e11f36bfcd6838611a5ae"
    "nl"
  end
  language "pl" do
    sha256 "e686eb0df3c2c8659b2b01e70b7596f06ed460d359239c8277b9ef9c364ddb82"
    "pl"
  end
  language "pt" do
    sha256 "325f7023d785f560165f9d35c7ebbb2fe4f3e88e4a37797c2097ebf958df8397"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "37efaaba21b1a9df623e95cb2670b0a2944d9ea582ede16567c03a6e9be96bdb"
    "pt-BR"
  end
  language "ru" do
    sha256 "85b9d66a14af49008374e48a5c95e616ee11abc78be929569314485b75f41511"
    "ru"
  end
  language "uk" do
    sha256 "a391ac9edb71aca500f5e29f990bb7607657d3bdc5f5bab0e5a219a137a9a8ad"
    "uk"
  end
  language "zh-TW" do
    sha256 "a230e6ead7a360c9fe10761d3f5bb2b2b711bd114755021ffc40cb774b703e0a"
    "zh-TW"
  end
  language "zh" do
    sha256 "17ed80dc06dd9749df703faa802494aae71a9068b84404ba12e3d6b3f5fd2b7e"
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
