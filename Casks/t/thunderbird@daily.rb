cask "thunderbird@daily" do
  version "144.0a1,2025-09-11-10-27-13"

  language "cs" do
    sha256 "74133a4e50c4ba527f0af73b925370a888ac9ab9c519ab30d4c42873336b524f"
    "cs"
  end
  language "de" do
    sha256 "ea162b0019ab5b7a42a22908e1f2c5ea5121e7e31274d7f3e71cbcf5ccad51d8"
    "de"
  end
  language "en-GB" do
    sha256 "1bb335080d235d972c170d8065d2fb6cbcb6ebab47299130270302d73ed628df"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1afbe67c5010afc2dc4451bcdf212ea9a740bb515dafef5b9f7f8c40375361df"
    "en-US"
  end
  language "fr" do
    sha256 "953122942abcbc680f9a509e54b798b72a6e7c107d920bce01babb7c369cd14b"
    "fr"
  end
  language "gl" do
    sha256 "b70551113ecd6eae9446ae9de2ef6beb42d0d1b2fe888d76d27320f400e5d79d"
    "gl"
  end
  language "it" do
    sha256 "58bcc2f4c022b64029f64d4c3855ab43f38e8781f020792a20bd87bfe05583c2"
    "it"
  end
  language "ja" do
    sha256 "151aeb1210415e7a849519f0206921d8742380354ca5de9f02b2e9967b8653ca"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d475c13089ec4240401067ec00542e297c8fe8261c40c568a8f80b596cf466ab"
    "nl"
  end
  language "pl" do
    sha256 "695ae93f59ea4f86630accb58359ebc2cd3d0ed3a2b6c029bd9f2ca36a3a0ef0"
    "pl"
  end
  language "pt" do
    sha256 "ecd10eabce6dca31329780186567999773c668be77669267eeec2976c4f1d288"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bc354722bcdba02057bbd8e1e541c1d4f4f6ada70a7dea73a7ff77af57ed88d3"
    "pt-BR"
  end
  language "ru" do
    sha256 "278b175a5cf88e0ddb45cfbace29e516ef19b324004f5782204b7005f958f798"
    "ru"
  end
  language "uk" do
    sha256 "73cd85e74a067e1b58288b6a1cde8d3da691fc3bade50f7973fd5dca006394f1"
    "uk"
  end
  language "zh-TW" do
    sha256 "e0c7786f31ba7b5f7cc250ed0892b2674eb73d41f6aab0f0828da73838f6d64c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2d56a7c79ce46748d25ea38b97d1974ada5b627619c1416769e3cdc1adf84ac"
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
