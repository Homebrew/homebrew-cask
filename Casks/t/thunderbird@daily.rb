cask "thunderbird@daily" do
  version "146.0a1,2025-10-20-11-01-25"

  language "cs" do
    sha256 "8371db19cc19cb49de5d44b8d3c953e8ef6ae5e89da1bc1720bd144b56b86537"
    "cs"
  end
  language "de" do
    sha256 "f03a52214d30f6b838ce9a13df68c83d39d8612243cfdb493e7ffd1b69ece3b1"
    "de"
  end
  language "en-GB" do
    sha256 "c0371709ff71e4cf0d4fc22b295c24c0405b8f1fc85387b6c1a5c3b92980a2fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4d751edb019ef517d57011914856e4968dfafe928d6ba73303c6055f30ab65f4"
    "en-US"
  end
  language "fr" do
    sha256 "b65a49a1fdb5b56012a53928a2ee574d2c7f7fd59c24e3206e5a7b2e0292e932"
    "fr"
  end
  language "gl" do
    sha256 "180f06708da10d5a4353412ef5b23e71ed4fffaa263625f09f610d7c617f4d6d"
    "gl"
  end
  language "it" do
    sha256 "51bee1493e8e702da9a95d47fc10ae77e1c17335d61b1ffb9069e09e33a045e8"
    "it"
  end
  language "ja" do
    sha256 "af67efc6932e48cbcaf1926d277aa81832e7719b38777885ab439ee21d0bb5a4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "10098bd9ecff72afd2215fab4d1dee814da7aecbfc5505d9c9e5f11aa14d72fc"
    "nl"
  end
  language "pl" do
    sha256 "8e82a8895c29bebb48dfb1e28e12b090d97b37eb1674d7937953b86b1b9eba9d"
    "pl"
  end
  language "pt" do
    sha256 "27abce1bb65a451da01216b07041295671c184ab94c3b861618ef58503009d08"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d1c2bf9581de70a6c25340607a16f592b0dfaf822679329d7a5b03db1c448e3b"
    "pt-BR"
  end
  language "ru" do
    sha256 "7f05666db38f55aea43b20c04124a6c3ddc88d67c7d7e52aec0292a1471fbd68"
    "ru"
  end
  language "uk" do
    sha256 "9fe5ac1a14c2e26373f5b49c2c749d5af06f4d92c07bbb943e97e97aab7eca59"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ef315140d0f82f20943d6a24205288113cd61785194ea08674d22750fcec8d8"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d8d37b6298642fe13b0e47221649cbc5d749ac1b39447173a182e44ad6d8919"
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
