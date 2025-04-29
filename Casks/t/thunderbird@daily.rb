cask "thunderbird@daily" do
  version "140.0a1,2025-04-29-10-50-57"

  language "cs" do
    sha256 "96a26fc5fa4b0b0c6444ac2cb1d2b0fd7a3a7014d65c60fef179e66cc7408025"
    "cs"
  end
  language "de" do
    sha256 "1850f756d290ad5a46d268c161182c7fc3f61a331efb2e4792680879c07c2b3c"
    "de"
  end
  language "en-GB" do
    sha256 "2f652a9b6b4396ef619c65f28b09aae850091bf7aa729f403edaf7a26b9632f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3f742110e5e932e78500fd81680aa55e4b01ee5c7eb197a29d7e078ec19c4306"
    "en-US"
  end
  language "fr" do
    sha256 "9ae1d0dacb6b8c5a8f778fd7a35f33ab34822dcb072a1626d18c73ef1bafb4c7"
    "fr"
  end
  language "gl" do
    sha256 "79ef71258d67cac370274771319d4fa5b0f536cfb57c5d155b644a7a758a5a8a"
    "gl"
  end
  language "it" do
    sha256 "f79bb42e0585eebdfcdfcbdd546f7987371f4cac4cef75159fd1b0a1d7fad8fe"
    "it"
  end
  language "ja" do
    sha256 "a87715b723b22b7853b5b796e58fed7024821c7efa2370dbf061f877b40dfaf7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ce3ac407cb487b08827d613d4ab1e25a202ec3136929148adf707acc55fc17ba"
    "nl"
  end
  language "pl" do
    sha256 "9867bb2d0778f948506389f0b0c2d3adbf66b07515f242b696600de91048939a"
    "pl"
  end
  language "pt" do
    sha256 "380ae16ea4786d7e88691f0e1f47e8af2999b89f672ec08922e99504da31f29e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d12f9179bd8932a56bab6d258c27ee9f7d67a4c4e6a1ae3e20ff607244fa6a39"
    "pt-BR"
  end
  language "ru" do
    sha256 "138c63d2a423bc55ba12d3672eea3964d31c8867ddd24f47f7d8a14c636340f5"
    "ru"
  end
  language "uk" do
    sha256 "9ac9b85083b5fae09dd5ab3f4839a5e27eafd25228c2870b381b37801edbc92e"
    "uk"
  end
  language "zh-TW" do
    sha256 "38d5bc184a6e03b49ca7c85688c8416c8a6abdd09a5da01637d1b3f8dc5650f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "750053310b087883664835bcedc5f968ba48d54168717408832da9833e4cb62d"
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
