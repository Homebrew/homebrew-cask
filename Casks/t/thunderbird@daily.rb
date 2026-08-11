cask "thunderbird@daily" do
  version "155.0a1,2026-08-11-10-15-58"

  language "cs" do
    sha256 "798048b211df20d81b49c11156669c51d1d0d0a7605450c2b9961f59523ff2de"
    "cs"
  end
  language "de" do
    sha256 "3eb540bac6d39be24ce823cc351c5daadd793fc320782b4cb3f64a0363d08192"
    "de"
  end
  language "en-GB" do
    sha256 "fdddb93d02f8a98b72a968fd9d078384093bf453283aba92ee17ef0f156475b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f207caa3e38d2b38a9f3b5534f5420e0acf2957c3aab85ba9746196aab49ceba"
    "en-US"
  end
  language "fr" do
    sha256 "a79cffc74b595169a62bbb57fe7eade01935bfbc6a338eb1784858c255b468a1"
    "fr"
  end
  language "gl" do
    sha256 "d3288c869a848df3a7baaa419558219e7640bd150836b1f9811fb2df7a388338"
    "gl"
  end
  language "it" do
    sha256 "2f6e7ff312e69893983b855a5a6475ce13c548229af914050c71aadc44634c0a"
    "it"
  end
  language "ja" do
    sha256 "124a321956fac8c6b55e817df235419fd7e9f9ffe26eaedf8ea4babe576e47d1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5fa9c1dc29b0abe3cb28f73e1f3625906c888e196659236fdf03221281aca328"
    "nl"
  end
  language "pl" do
    sha256 "22e4302762ed1d7e32735f60221ab273898549feaf446f699622e41f8968b3fc"
    "pl"
  end
  language "pt" do
    sha256 "9a187467f4c4a221829c446b80a0b39898204df8c4a62270830f8e890193ee80"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4952c858b8bf0b0e32b8e0d4977f4fbdb77f7a3f2c6279bf7f5aa0ec81bddcef"
    "pt-BR"
  end
  language "ru" do
    sha256 "f8bc91eb332d9917217c2afccd7c05079443797011cb2a9edfa64d565c165ab1"
    "ru"
  end
  language "uk" do
    sha256 "fdc43f734b754b767474dbcc2464a2203cc7a5145a7d66fe329e3dade9ed7b29"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc9ea233bd2077758f925789946ff2195c39e188576faa98de51c1f5e0302cc9"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a13fc7f7022a178fac1150cec476f107369a0f74f1d63845331ba242cea7ad4"
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
