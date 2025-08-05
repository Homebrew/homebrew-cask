cask "thunderbird@daily" do
  version "143.0a1,2025-08-05-10-16-00"

  language "cs" do
    sha256 "f91d23a7d210aee6f46edb834c3c0d486f86c69977b48dc843ae937bf70bbc31"
    "cs"
  end
  language "de" do
    sha256 "9d234b24f785a8f076e7a4cf56fe3b5c054472818899c3cb0c7d416095ed2a56"
    "de"
  end
  language "en-GB" do
    sha256 "9773fad5302c2337211f00b30a8aac4f44a9a68b26a7d157ef713574369f27a5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d965cd51131d916bd0bf9a06d2293135d1d2ccfef9de949fde1b47a91060818"
    "en-US"
  end
  language "fr" do
    sha256 "a8ac01f7e4ea0d6bab92be0327a45d60f517368a2ffd70b62353fc096622e5bd"
    "fr"
  end
  language "gl" do
    sha256 "2bfc0cf3bbfd56af673cdc831ffb9953178319ca8709b640ab569ba6d1392942"
    "gl"
  end
  language "it" do
    sha256 "bce5d48a85a88f64b1ab131e72e936f88bc955f04655c84f21ff255248e58152"
    "it"
  end
  language "ja" do
    sha256 "6931194fa64eb2e5f3e5d8965f09ada55bab828480c6788da5e8713fe6126e65"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f0ea3d1beadebf6242e2af141a04d622f9ab5f1e9845f7fdb15aa05054aa5a3d"
    "nl"
  end
  language "pl" do
    sha256 "e35d5063256492b1d17925c38dd548d265b2b5b87a0577cd247fc969e9d5ba5c"
    "pl"
  end
  language "pt" do
    sha256 "0fe18d3b74b5443646c3056b15e0716ad07baa0b4a32163563c9ad515b0cf982"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7c68a9102414b64d63356556c3fdcc50a7b3d3b62173bb09da1af498c4609dc6"
    "pt-BR"
  end
  language "ru" do
    sha256 "27384f00ba3146780dcf00228ba96734095fc0efed6f09a746907182ded5c1bb"
    "ru"
  end
  language "uk" do
    sha256 "bb66fc2266244ddd1552deb93e9b7efebb5ffa32f6db8880bb990a063a4187b0"
    "uk"
  end
  language "zh-TW" do
    sha256 "5c4971f2ca01626bb91e30524d99b52423a5d0ecb982cb6174a74719ffe33e6a"
    "zh-TW"
  end
  language "zh" do
    sha256 "6df52f4f890fffdfc346d049c4653a481d0bc7d8f2a92e82aa8a4975633454ef"
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
