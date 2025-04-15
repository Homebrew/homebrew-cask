cask "thunderbird@daily" do
  version "139.0a1,2025-04-14-10-25-33"

  language "cs" do
    sha256 "1752c489a67d5941a1dc6b0ff23806b1ea32a8a59f402a54728675ce33fbb444"
    "cs"
  end
  language "de" do
    sha256 "ee4b23ed69ac4610a2ba2199f3ba0ddc6652c5d9e928884094f136f5d094dee9"
    "de"
  end
  language "en-GB" do
    sha256 "6d3425baba8d06259ef9e7049f121f8c30d18cc5c97fe42fd09ea8f5db035786"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f26b86ea957ea22a443096eecec2df85da354a1f423d2b1e93b94efb6f3430c6"
    "en-US"
  end
  language "fr" do
    sha256 "e9e0f4883be5396dba6bc22285866527ab7a12cf4fa76c9bc55662d3747cdb6d"
    "fr"
  end
  language "gl" do
    sha256 "702b7d5ce1020be114fcbb951a33e6a4b8f347debdb1aa482c416773c59fb619"
    "gl"
  end
  language "it" do
    sha256 "afd369347bcda9c056ec41ace78bb010fb24eb170218a83a851eacd22ccc7e56"
    "it"
  end
  language "ja" do
    sha256 "e288f6e1c3fa47838f161bd247ffb19c57a55436a54e44904cd8f8e085193e41"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7046617abdbd0dfa1b3c979de7d4732a546f9b99203d7fb0c25b2c716f81d14f"
    "nl"
  end
  language "pl" do
    sha256 "6c01e18b3eaf2b4fd4bb20b1b277fc75121b9164dff3f200aeaacdc753ec0a91"
    "pl"
  end
  language "pt" do
    sha256 "05d77797363eec52e2a965198d57377bf7540aaae7c7fe2c707149bdffc51192"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c155d8452def9d7537e64c41032677427cc7e4538295dbc494edfea27f2aa5b5"
    "pt-BR"
  end
  language "ru" do
    sha256 "81445c0f271b5ab87444cd7c63173ac221fe8c0744ad79debc617c2f417dd7a7"
    "ru"
  end
  language "uk" do
    sha256 "2f25f6f04ee592fb86bc2bd0248b776e35a07d1cf2ee6a942d7287f223bc55bf"
    "uk"
  end
  language "zh-TW" do
    sha256 "9f1ab58cde38fcda087ae9b249caa558fbf5e0089517421db764bf595d53e465"
    "zh-TW"
  end
  language "zh" do
    sha256 "a8593a3f84aef3c16d6c580a08fcae4f6c544c1b77656792fb9e4fb5834e5cf7"
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
