cask "thunderbird@daily" do
  version "140.0a1,2025-05-21-10-14-10"

  language "cs" do
    sha256 "6b127bfd418352244538c8926caf6cf667ac1d1bd2428770561e7091d784f7b0"
    "cs"
  end
  language "de" do
    sha256 "0dca9492fe4430222e89e40fe3aabeed746448078b1d8210dfa77355ba419883"
    "de"
  end
  language "en-GB" do
    sha256 "a91f9a869b734dc188e1e7cc4b6e0d3cef21aa2fbb1465785945f319b41f46e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1d92663579dd830c5f1d93934808118977803f80bf171d1ada06b12a074e0b91"
    "en-US"
  end
  language "fr" do
    sha256 "46b0053aa2a8756dad9443b13eab172d40bceddf31ff2adbd525a639e7f0b5a8"
    "fr"
  end
  language "gl" do
    sha256 "f9a44543f9a55b796308ebd8acad3ec78b15ed34471d5b9ca76168d68783bf7c"
    "gl"
  end
  language "it" do
    sha256 "ce9c9cd0facfab07bae27bdb4dd55850c90a7d7e69b19ca8c337e3b4278e854f"
    "it"
  end
  language "ja" do
    sha256 "1fc89d7db1d43e27713ff400c898c83a26383fe8bf7c4cf233f0f55319aa5a45"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "de59e816930fb2918f7e8c7081b5330ad00bea0ba1ff422dff3738995e2c8838"
    "nl"
  end
  language "pl" do
    sha256 "89f5d65d8553ba21af012343c12d99d54821d0a1f0881a29e78ce07f68b07498"
    "pl"
  end
  language "pt" do
    sha256 "de11f8e70293f85951098b135b5bbe9f1aef7014fc353269c8a27f5c777b369e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ad0eb5249d4443a8f94ea1e7a901028526cb8cf908b7bf4abe8b0c873f422aaf"
    "pt-BR"
  end
  language "ru" do
    sha256 "bc38831b5f3e1abca9202d818176f25dccb17333cae6030894f3d0c94bca6a7d"
    "ru"
  end
  language "uk" do
    sha256 "d0b1fd1af47e25cb7afd7d1fc81dbff864635db176e5ee476194379758de175f"
    "uk"
  end
  language "zh-TW" do
    sha256 "c1f4df94431ed8543d3d4fe26400462bea9238dd3210fb1eeab998e44e6e8928"
    "zh-TW"
  end
  language "zh" do
    sha256 "61cf007bb4654d305fc1797dce819c1d66c68725ad21ad9baf01c2a292a32ba1"
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
