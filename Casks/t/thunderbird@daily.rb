cask "thunderbird@daily" do
  version "155.0a1,2026-08-07-09-54-47"

  language "cs" do
    sha256 "fc857c8c9ba70a3ff4902bbf297c318a3a594d3870f6f82572dae24e89fdc53f"
    "cs"
  end
  language "de" do
    sha256 "6be6816b59a3bf6ca5775545dcca9b680ea7abd30ac0bdb65b60d2e2a13555f5"
    "de"
  end
  language "en-GB" do
    sha256 "69d70ce29e2562aeb31ddad87f714183ad5964150f9ee1efbcb379b069f1dac9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "180e893d3b85dd9a8a119fa466b22b950053623fcc3c906209d7b2f8452b25ce"
    "en-US"
  end
  language "fr" do
    sha256 "58cd2b284f5a1dc59164354f4580a971011a8ca99ebdc107db0139e90cb1c784"
    "fr"
  end
  language "gl" do
    sha256 "4f94cd00ad67673e1219b448523abc355852f3e138e49f42d641c0eb9d7ce4fc"
    "gl"
  end
  language "it" do
    sha256 "c5922c2db20dbaf0997b1729eacefe4f154099584fe53a0bac06dd1efc7c6f7d"
    "it"
  end
  language "ja" do
    sha256 "ad58e78c294d72c0f252ee7d053333620ce98460b533e561904611fad736847e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "128d29d41644b6e0cfdc389a37df0e8caae31d4dfaabed2540ec12d046f24b73"
    "nl"
  end
  language "pl" do
    sha256 "f0c485685d9de26af353bcd1c3a079df84d22ddc30e45d7a6d967c0e5ec8a51d"
    "pl"
  end
  language "pt" do
    sha256 "8ca77474b893a291877f9afbfa53a3ce2ac3f808a78a082ecfae66958b1d020b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "133c5d474091b580f93ce68d66741b9a5ef1fd7e7f4acdab9de73d8807fc63ac"
    "pt-BR"
  end
  language "ru" do
    sha256 "c7839500989dea05071db748d8a5c1bb5b1ce23ee703dcf45504d4702b6ef17d"
    "ru"
  end
  language "uk" do
    sha256 "c7b1d9c0f9a746001dc6f093842a4208461d2c9d6b0b774e706c45a540ba6cc0"
    "uk"
  end
  language "zh-TW" do
    sha256 "49da472b1a6bf5d0c53471ecc8c69bbba1b9cd32f10917baeea5222aa8f65002"
    "zh-TW"
  end
  language "zh" do
    sha256 "737f108b1b9b810892b3419d06e2e70bda1ba8570545dfde8d8629a14f82106c"
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
