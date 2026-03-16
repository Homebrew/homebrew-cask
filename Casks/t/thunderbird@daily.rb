cask "thunderbird@daily" do
  version "150.0a1,2026-03-16-10-46-06"

  language "cs" do
    sha256 "478172658500edb20f4182093b5fed52405a6f67682ca609ca5c01f00c768b1c"
    "cs"
  end
  language "de" do
    sha256 "368b00257abec29800f0e86c95b5dbb3a151f719a27964266bcc969e388f1619"
    "de"
  end
  language "en-GB" do
    sha256 "96c7939652f479fe33ad10d9f11ae25104ee767b306a6082927db2f36a645699"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b7f0d5c072e67842790fb6bdb4f19d578b041939a98a431bb7df1db1a364ca9b"
    "en-US"
  end
  language "fr" do
    sha256 "b05642b8d1cc5b75e5ff9f496b2c3874e2af5d6e1cba3bce95b652063d58982e"
    "fr"
  end
  language "gl" do
    sha256 "4ea1e507711b8f4c766ac52abdc3b958ff0b58da6e80a6658959b872c8c2f22b"
    "gl"
  end
  language "it" do
    sha256 "906c92b380381ac3d88969ac348802ffac692cc90b37f47ae9370600a496e077"
    "it"
  end
  language "ja" do
    sha256 "ab1d88587f7a63773523a85326943783f998b0f79cf48e0cb126a35f92b4de22"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "141ae95fa75171df6021c17647ab715012568ae5ccbb88e2be1388a52b9057dd"
    "nl"
  end
  language "pl" do
    sha256 "8db2cd55255e4c8a2ef1aee5943f62186f0ad67465966dc780caa10f6c066fe1"
    "pl"
  end
  language "pt" do
    sha256 "e5e9ae2e01958095d7bc7b401350418a3edab8b2f082153d9590729a6b7ea89f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d89e5e7e0a95b26291bd227e2ba921c17e5838670302cde1d70b6e9ac073df64"
    "pt-BR"
  end
  language "ru" do
    sha256 "34415bd69b9c3a73656ac05557a305fba68ae3d353d0f902272e1a88eea75535"
    "ru"
  end
  language "uk" do
    sha256 "5b60d903b4c40cf5a0c2e2b72b1dc98c01e5e3295fb1641d36661ccd65a952c5"
    "uk"
  end
  language "zh-TW" do
    sha256 "06c7b69436d2ac556493c2f53b32552dc8934d1a2522dd037321e08b8516d2ca"
    "zh-TW"
  end
  language "zh" do
    sha256 "323c23b97ccb60d1b538335d2415680512a1b3ba52150ae316492c82122a4249"
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
