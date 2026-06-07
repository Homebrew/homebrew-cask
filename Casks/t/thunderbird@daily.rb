cask "thunderbird@daily" do
  version "153.0a1,2026-06-07-10-40-44"

  language "cs" do
    sha256 "79e7fd5513b73f35749aac83f8f023bdb45ff7cdac333f01525cb459522ef6cb"
    "cs"
  end
  language "de" do
    sha256 "5fbef8649d692ffa639eebca235d1a427fbc9e1f725bfb51a3c4486b2db01846"
    "de"
  end
  language "en-GB" do
    sha256 "c1d562274f3aee768ab444bb96e9bce6280d84edc2840e58baa4a626b29a6b58"
    "en-GB"
  end
  language "en", default: true do
    sha256 "516a98596e2f7ea22f1c6e0714872a35b499dd766cd1a902d70a4448a1a0e882"
    "en-US"
  end
  language "fr" do
    sha256 "01960652ae95d02a651e6192eaf65ff748fb7e1fde10c5e84969313b11447381"
    "fr"
  end
  language "gl" do
    sha256 "0e270b8a27e717396d1aa49294040cfe95b475b452e70d308ec1d68891b099c1"
    "gl"
  end
  language "it" do
    sha256 "f0c9777d010610e831ef64931b2d236b72910d4572702a510227e997cfab1195"
    "it"
  end
  language "ja" do
    sha256 "63f2a81014b4e196e2dfd7992a3b6f048c5636ec63e66f2bca9054d4397936c9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "07210e3e96651e0a561c6f44504f28283679b6c2cbe01d8ba2e55c1443215938"
    "nl"
  end
  language "pl" do
    sha256 "d29ebd10cef7d38564eeb86aaa1412daed415e521b3fc3c56092ebeaef8af652"
    "pl"
  end
  language "pt" do
    sha256 "6292cdc3f4ffa05eb43575271c43d43f9c7ea920fd6334df5601891f90b50cc0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d1f47870dc0f065e0fb89a4b1c7123d8d51bf937cbde8cf0f0211a4aaeaece76"
    "pt-BR"
  end
  language "ru" do
    sha256 "6981e3b455619b09970a62601bd3edff8ef12d7c68e97e26b98e57214c37ab88"
    "ru"
  end
  language "uk" do
    sha256 "27cade5abb56e7729ff8dc2ea49150cec2fbd95d49d0afc01dab830a20edac7d"
    "uk"
  end
  language "zh-TW" do
    sha256 "975c4f3093be85626119286942f47ae8aaf2c712a5ebb8e177c0ad2a9d2f36ef"
    "zh-TW"
  end
  language "zh" do
    sha256 "e9f8b4f1b23c7ea6cbe21b339a957ab29442bd0008b2ae3fbb82aaaf3c237aa6"
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
