cask "thunderbird@daily" do
  version "154.0a1,2026-07-06-10-09-54"

  language "cs" do
    sha256 "35846597a8aaf83c220ba7c5f271ee265d597837fa68bdb994f9656bcd5803dd"
    "cs"
  end
  language "de" do
    sha256 "96ac3bc88a0cdab8d90f5cff105e5e645ec97310f14f2a560006d174f0c6f216"
    "de"
  end
  language "en-GB" do
    sha256 "3d8066b2e52be044790d2f4bd0c7b6b81fba2143a07202777b2f5e551fb67b4a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "065fe854e4a2fa9df594d39e45a94d6d95aa251621998b4d90d64802a5d4a640"
    "en-US"
  end
  language "fr" do
    sha256 "640cbde7faaaed564ac950ef25868fd71e83edd01c3382212eea77e4e25a63dc"
    "fr"
  end
  language "gl" do
    sha256 "a744ee7987c3eda3f8328ea53b28f0a69632d1c130520dc6af59a9465b0d5b04"
    "gl"
  end
  language "it" do
    sha256 "92a5f0f966ac3efb3a4a100926241780102c0a3b8d6891f17eb69ab186a1b95a"
    "it"
  end
  language "ja" do
    sha256 "9ff79f0beb6d351b7bdb9e8f6eea2ba7dd11838fe1047153f84aad085b54b076"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fddc7e29680ca36a709c10333e43cd11a353629f0caa516a53cbe2573ecf722f"
    "nl"
  end
  language "pl" do
    sha256 "5498a79ad8c799a7b99c773800c86489463e8d9bb246dfb05933dd8649bbfc37"
    "pl"
  end
  language "pt" do
    sha256 "0312dacdcc010a4de22ff65834d30355970572af628798d61a34749bccfa2c03"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "049b13233d1977d8c1b5a80381524a1ca2b0bbbc6c2b1fcfca85d72c0a7269b2"
    "pt-BR"
  end
  language "ru" do
    sha256 "af7699f146e8d9cf6013a46bb01a885706ef6028000dda7a50c85f276baaa29e"
    "ru"
  end
  language "uk" do
    sha256 "f477e5162d911e82c4285b9b5f189e6f8e1d797fb0c560c399367fbe2dd403bc"
    "uk"
  end
  language "zh-TW" do
    sha256 "06c7393bcf452ef148820017879b1917e61d3dbfde93b135a48490b55cf4cccb"
    "zh-TW"
  end
  language "zh" do
    sha256 "4d0ddfef5269c2a96b3670f5c1328eb2d4b059b4fb937065fe10ad49f630d201"
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
