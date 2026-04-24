cask "thunderbird@daily" do
  version "152.0a1,2026-04-23-09-53-44"

  language "cs" do
    sha256 "c9ff87925431a815adcc5bb908e2e48c3088e81b5bebfa1c8bebadbad65db5ab"
    "cs"
  end
  language "de" do
    sha256 "12707a14c4770012583f85db6bc1ad5b35b2a113c569d17454157e37e865e6ca"
    "de"
  end
  language "en-GB" do
    sha256 "803f77a7dce5e727fc781ae6f7ee58df19951526c1aea171664a82d93af0a34c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "324cb2575010c74a1e3c2c6d8ec0333fe1cc11a0189c02bdb29dff243a9707c4"
    "en-US"
  end
  language "fr" do
    sha256 "1769832952f0a9614e8d4dc7784afd99a3c6cd1a73745aee6783b01d189f9e8e"
    "fr"
  end
  language "gl" do
    sha256 "3694900113d68eb30f40ae9ff7872ec74fdeaceb181951e928596b5b855f76a7"
    "gl"
  end
  language "it" do
    sha256 "0cf71fd2ae56994825b22de54b17c0239d35980c3a9967864c9548535eebba19"
    "it"
  end
  language "ja" do
    sha256 "55f04702d54f609e5357dfdf8e35c6e7e2b01c176a31046c8dad3b64fe18518b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "89c1d996c2dbbc0fe237ec7b710d0e010a19bc0b3a82304e16254eca9cfa75e2"
    "nl"
  end
  language "pl" do
    sha256 "2c069f94af3f7cd68a360507fd7292e8aee3da71f44e9caa93ddcc721e2bfe79"
    "pl"
  end
  language "pt" do
    sha256 "f325faa0d073b448a2343db6f2d93b6635960b8989452d8ca47f2ae431c71170"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f8d469678c8ff35920c2a30f93de26943bfcc7a8f692dbbc5db7ec47bc9f85a6"
    "pt-BR"
  end
  language "ru" do
    sha256 "9d07c19899d128a92e036155296cd7b636069f597504d4a769fcf35c682a8231"
    "ru"
  end
  language "uk" do
    sha256 "733a682b25971f46e616dfad143ea3b21e604b38b0045a4f1d094236128c1562"
    "uk"
  end
  language "zh-TW" do
    sha256 "8032ea3d6f1caafe62c248011fed0d8df5f49c1d5588ab2ebb07e791b8c8fab7"
    "zh-TW"
  end
  language "zh" do
    sha256 "7a109cc5c71112de67a31d1da98403a9dd1e6de9bf2554a6d0ce5f4d2403982b"
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
