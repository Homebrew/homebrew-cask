cask "thunderbird@daily" do
  version "154.0a1,2026-06-19-06-53-26"

  language "cs" do
    sha256 "839fe96ffb314d625ea1fdd03617731ca6a6253d7067e2ecfc256558134c3a32"
    "cs"
  end
  language "de" do
    sha256 "dd478dd8db7474d37fba189e7b7c624e6eec52cb716bfae9acb33fa7e4afe877"
    "de"
  end
  language "en-GB" do
    sha256 "27f11f6a01256926a341607ae08c7affcc25be1fd5c590124fb8f2aaedb1f515"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0f42433db7c8eeebc9469569b56a4cad316cde14091483e7e8473bccf4581aae"
    "en-US"
  end
  language "fr" do
    sha256 "dfca645251065d318a3f0e76056b6fb78a7155661c486b2c8f3ba21a8ae19fb5"
    "fr"
  end
  language "gl" do
    sha256 "fd06333478b9c51870cf3500f1a0c07ac644f6b175d1982e2c353ca24a6a8d36"
    "gl"
  end
  language "it" do
    sha256 "9c2f8635f281ae94c41e195b8b107309d8ef0070b2435a332a965413f8c582f5"
    "it"
  end
  language "ja" do
    sha256 "14ee3b19e7e66aa1344918b63c366caff2d664a7a0ea354b2128c61f43d34438"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6eb40bbfa8b71250e8ad402f6c008e1101efa7036f4b1888fa738794f13c3dd7"
    "nl"
  end
  language "pl" do
    sha256 "feca996766c58814544653140f4b6dd0e8cc275d1500010b967a6d135af1f8ff"
    "pl"
  end
  language "pt" do
    sha256 "a3dcde15fa6d91ecb6645362b5c9a6071ca7159b28318ab3d1f389b7b84d6ece"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dfe794f6823c4a242e4ed891bc70bdc2c4f838522bd42e4411a6451a9f166f58"
    "pt-BR"
  end
  language "ru" do
    sha256 "3fcbf274682d97796a8ecb644374f8de59736a80902b83293c30a49e35031489"
    "ru"
  end
  language "uk" do
    sha256 "77d5ba6d0ef5f66be5389dba87c1768aab96faa10dd89c0a3bf9fc742382d92b"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f171278c9efca5f04477f36c5ef22810d480410fe82d812af6ee51d8b9c4c3c"
    "zh-TW"
  end
  language "zh" do
    sha256 "49c4f5924622c71728074757da8ce4208e8b72fea7358a32b1034d24af38090e"
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
  depends_on :macos

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
