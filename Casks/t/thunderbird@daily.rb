cask "thunderbird@daily" do
  version "151.0a1,2026-04-09-10-08-52"

  language "cs" do
    sha256 "1d373e5e991a3ab725dc65dc18427e78efb35d51b8cfeb53b34e9c097487cc9e"
    "cs"
  end
  language "de" do
    sha256 "930c1ce2eef1794f03026b5f3a388b140f0f52b8535b3f674ae2e1a2b1578932"
    "de"
  end
  language "en-GB" do
    sha256 "2733e49e82120f1b59ba69dc03472e46a65962e44261e550fba64eb5fe85b31c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7cc6956a54e499a348594fdc95701762273f2a22f6504b2ffde7aa1f6bfaad4a"
    "en-US"
  end
  language "fr" do
    sha256 "9b593d87aa704738d6cd0ba2d01307ce65475611edc77f3f5db9b4d5fe372eab"
    "fr"
  end
  language "gl" do
    sha256 "473dd1fe4a877aa2ff700280d3342b8a7cfff0c52664196394f6672d6e25d07b"
    "gl"
  end
  language "it" do
    sha256 "9a6c0c3ca46e0949325119e43ddada16ac83f6e24ce7920c3520d65ec1c5124e"
    "it"
  end
  language "ja" do
    sha256 "54fe766317c400558526fb439eb025d040cdd885a19191f850c14a10f86192bf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d37dccdac0552ebf4ac280077e74d1ee92826ffaabc5475db6dcac51725821c5"
    "nl"
  end
  language "pl" do
    sha256 "a51f59b7499ff53b2443040ed8eb01d19cb771f7d24c8c1b27e2f8c55e98c2ff"
    "pl"
  end
  language "pt" do
    sha256 "acac5c25b5f0161c42e9c30876e092f6954f3ed0289f9e72fdb5efa4aabf1b54"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "23db8baf8cfb22d44d0ef1d9f9755920594b1c290e6349b216ebe940a08004ad"
    "pt-BR"
  end
  language "ru" do
    sha256 "4797606eb900e2bd52016b6f175e724208ad31be0edc237a29c0b8b7862a730f"
    "ru"
  end
  language "uk" do
    sha256 "303d53a21f45afa63749038b3c750e918e4930190e82b7d1db94de0a9394d0f8"
    "uk"
  end
  language "zh-TW" do
    sha256 "ba388e5f48b4a39b7d531af53cf5ea84e6885c792abc7c2a588d4e8b2862bfa7"
    "zh-TW"
  end
  language "zh" do
    sha256 "660b6dae9f57398c3c5610b137785db459bbb3c5fdcc009012a856be7e6f5185"
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
