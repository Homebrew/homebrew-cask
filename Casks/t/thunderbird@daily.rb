cask "thunderbird@daily" do
  version "154.0a1,2026-07-03-09-56-03"

  language "cs" do
    sha256 "23c77976c78bc2b7cad202fb824bd119e0c8244c7bbdd2215777ecf9040f3ec0"
    "cs"
  end
  language "de" do
    sha256 "283499fd264cea4cb69fe72e9eb192fe145454579fb443629831ca2081dede9d"
    "de"
  end
  language "en-GB" do
    sha256 "a0926c33cef91f486209859c0b179e896e769d8f891026204d6122cc3deeb5b5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "33d766382970f9ece565828d5cd3a064a817640ef01226948f104203f84c3a5b"
    "en-US"
  end
  language "fr" do
    sha256 "5861dfa6b045addfa038a05d087404aa87bdb3a1f5b0a1c855915be52c8dbebc"
    "fr"
  end
  language "gl" do
    sha256 "a318767d52b83674ef98555511faca37cd681402c3badf583ef70a482e02d1ab"
    "gl"
  end
  language "it" do
    sha256 "bdfb39913e7d86416bed8f092f12eebc6b525fc2f2b90d29cbb6717a854e3336"
    "it"
  end
  language "ja" do
    sha256 "bd3c853f956f3046f40284dac475fb3d31be049370fc8c37e2cfcdebe151aa63"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e19c5daae4e6e679845c402574364bea87a3f08cd5d89fbc6aa491c26a4d1cc0"
    "nl"
  end
  language "pl" do
    sha256 "2e44efef83272d5a730fb217310d8f0a26bd5c333171aea0b6581a215c1f5a39"
    "pl"
  end
  language "pt" do
    sha256 "76ef06344a789bc101f7c040a66873302d1c4dae81b2ec5c450755167ea02bd2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f5d7c0dc59da6b732a51080a62a553e4fc4a67d862960d05cc65904d696c7a98"
    "pt-BR"
  end
  language "ru" do
    sha256 "9c1136b9f3d35d0230f6a409e2a27397e6bf1153e58525a830db9413be9ca21b"
    "ru"
  end
  language "uk" do
    sha256 "6018b212ecd125c8c66f0a81ae43c3a28b6ce58aa9315ac1de53f85d00efccdd"
    "uk"
  end
  language "zh-TW" do
    sha256 "6e5b61f15ca7706c4e2bb7a06d0b451e3a6b967b1de22fce8f9fd73f4b65dedf"
    "zh-TW"
  end
  language "zh" do
    sha256 "cb67cc213314728a1c51f7e8112d86e455818363f7f89aaa1d3d47b4ceb3a202"
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
