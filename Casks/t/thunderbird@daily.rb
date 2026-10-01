cask "thunderbird@daily" do
  version "159.0a1,2026-10-01-10-32-53"

  language "cs" do
    sha256 "8a8ace4f860136fc44736efe62f52eaa20363e8518e8607fadfd1f6db98548a8"
    "cs"
  end
  language "de" do
    sha256 "2e383db165ec7e8c5136f267fe6cc89220a9fcf655f3679c96ba68671dd0d574"
    "de"
  end
  language "en-GB" do
    sha256 "b23a32c17df04a74727089f6be773d3166eb302d2d5c94c90e0c4d4c9aae3c93"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6c5268b0fbc4633b7b85ecad2cc2caa0118e8ed5805fe0b79d6821e3fea7fa38"
    "en-US"
  end
  language "fr" do
    sha256 "5bc66123749d4a5b68d3a011c32aae8a240a1b2cabe8c518215a5bd3a4b511ff"
    "fr"
  end
  language "gl" do
    sha256 "e301abfb41e5f42d102f9bd04937926fffbd6dd74688e9e5a7730d5e5a456670"
    "gl"
  end
  language "it" do
    sha256 "9f6035e76022c34bc28475622fa8fcd1c76c9e859a347345de88566376c61ce4"
    "it"
  end
  language "ja" do
    sha256 "37f5ee323a43efd5a4e236635d92cff4693de4a289c2f388136e78a3cf9b8ef2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "42aa478bb58d3e1a916da7fe162b8976c59d76f932c59e5f8f0ce8ae9d59505f"
    "nl"
  end
  language "pl" do
    sha256 "ba597df646450b7520f975e02baf3898b060e70d6d89aca7119abfdf799f2d36"
    "pl"
  end
  language "pt" do
    sha256 "b924a1cfc534136a4cabe3f3746f83292db7bbc1cb287ce5d82f6c31410cb103"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "07a555e407eb0558c7f03d12a905d96e3ad7d15ca1d5d19cb8a6249119a56c69"
    "pt-BR"
  end
  language "ru" do
    sha256 "ad018e596d8210f32051bf4d6784dd5cd18f6e01fa5fa635338df068da45466a"
    "ru"
  end
  language "uk" do
    sha256 "e2f9d77c19ef3ee7e59825620d568e3b71d31a51efd68d3b5c03fb1598b12935"
    "uk"
  end
  language "zh-TW" do
    sha256 "3ac65372b47e5d228c06a02abcc67e45889d337026c7bd8199c8a7674e4f723c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a289c4c44f55c70a34b2bbdb24f4212c76e3174ad8ed270c2fe5c32d510d90cc"
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
