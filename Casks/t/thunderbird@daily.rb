cask "thunderbird@daily" do
  version "150.0a1,2026-03-21-21-20-03"

  language "cs" do
    sha256 "0082aa2bea7c99412b1c571ee94fd21e74316401b359145f2724b46dc71b2999"
    "cs"
  end
  language "de" do
    sha256 "7bf63463062bd3b06f8b556506d442c12a002dce7da72eb3d0e9282634e909ea"
    "de"
  end
  language "en-GB" do
    sha256 "0ca5913322d2df0ff70f59847ab2525bcc202f9fb8b58e824411ec5c184da499"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bded643447e4947607526a0ba432e2be64b455a0ee24ae5e83cb2626ab935c8f"
    "en-US"
  end
  language "fr" do
    sha256 "91da6fe4e691f30cfe87ad4d810bd943518508e3149b640cfb9b6db523d243f0"
    "fr"
  end
  language "gl" do
    sha256 "1d9316fc68bacd7fd271133c1f175aa9bc580b93a9a63a108e545d1588549c7f"
    "gl"
  end
  language "it" do
    sha256 "67de7afce7bf03dc8a68b361409e7382d275d860b95ffc0bf2a88d07147e4e52"
    "it"
  end
  language "ja" do
    sha256 "e79eaed1e4b945a8fbf59aa7e1550f297a3ba2d83e3616b932423be18dc7d480"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d988f0e857ed74bf422049524961ca1874e999c55c9526870d09d234ca3eed1d"
    "nl"
  end
  language "pl" do
    sha256 "ca7750d50c9d59e1de6f70e33e19b4bdb72bf52e51d33f721033e38606f392a6"
    "pl"
  end
  language "pt" do
    sha256 "89be12dce448e82ffd4f89e36b40472dc7ef87f1c02aecbddac3d088dd527138"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "89fe061c1066864a94bb8cd426b0cabbb3b35cd4a6ea78216758509bdc857da9"
    "pt-BR"
  end
  language "ru" do
    sha256 "434e7c6a6cc894e1b1f1671720a93d99bfd80bb623d85579623145a628d7d167"
    "ru"
  end
  language "uk" do
    sha256 "6d1498dd522b2704a84ce58f2c43fc0a3b7bafab7357b98b99009adfdcb750ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "d16f516bba0bb69510f61a74d4048ef1161e8adf3955badd36d72d9b03c15e43"
    "zh-TW"
  end
  language "zh" do
    sha256 "db3949cea3a2c28c95ef9e26ce9f292ace3273f262ca2df65c0c1a3c95835da3"
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
