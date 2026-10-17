cask "thunderbird@daily" do
  version "160.0a1,2026-10-17-10-35-12"

  language "cs" do
    sha256 "1b5838187563ca678209d3dff0da1b0e249b5d2041d6f58ec5853fdb4d4f30fb"
    "cs"
  end
  language "de" do
    sha256 "c6e56c6fc709e465a03c37863cf3145196da2ecddd1795cced4d0d694cb3f0b4"
    "de"
  end
  language "en-GB" do
    sha256 "93d1220c2177ea0d2305183c140588f9e50a5cdee277d168ac8a073f785996e5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "adc686a1179bbf05a126b3f20bdbf268e378452d71c15f9c816be30ac7977d83"
    "en-US"
  end
  language "fr" do
    sha256 "bcbe24696dabe1b61bfe8c26e9e9efd64df6ac086cae0d9db9d5a83f25789279"
    "fr"
  end
  language "gl" do
    sha256 "c689942970ff9b4224d8b7c72e5c9aa2637438a44fba8a8a759580187449f47c"
    "gl"
  end
  language "it" do
    sha256 "c5f12e7a28bc08e9d09af1e8e9bf38808af5a7c66fe30304f0999f48fe21f001"
    "it"
  end
  language "ja" do
    sha256 "2e4de48d4ec35aae87e87fadf6843d68cf255a408e2bc053d2c95fa473e94165"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "326263eb8535d732895980003cb2d10988e93b2cc48d389c6e4b004d33f5d67c"
    "nl"
  end
  language "pl" do
    sha256 "fae3d8e1f66a73d51d71cb119ecf6d4548274d8e8f7d728a185c382ea8667849"
    "pl"
  end
  language "pt" do
    sha256 "e7ceef680269097cb6925f0d3c1d00616e5085e9829c6ad5cdd774b234919161"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "858122d03381d6f9b7436dfd7155bc7a7e625b880787046cd1396831829e501f"
    "pt-BR"
  end
  language "ru" do
    sha256 "a8dcaf47b80c1776b0dfedd2398aa121b3af65ead1ba6679d3247fd9338081ee"
    "ru"
  end
  language "uk" do
    sha256 "c611e5d0fddd7b87ad7d496e8d13565a8ec6ca234748779674ce4a25d539ac9b"
    "uk"
  end
  language "zh-TW" do
    sha256 "414bb6cb2f9740f3874de697db8b131cea0b3f73fb3cfae642ab3c429eef61da"
    "zh-TW"
  end
  language "zh" do
    sha256 "46e00544ae60d20e2cf47f81d23e1937765d694204941b5f9185fac88005b336"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
