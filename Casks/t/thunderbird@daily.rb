cask "thunderbird@daily" do
  version "150.0a1,2026-03-03-10-32-59"

  language "cs" do
    sha256 "fea068f2eb84875b08b6e4cefa2f8c94ef50e4f69b52e57d58670a1dd18c4c73"
    "cs"
  end
  language "de" do
    sha256 "5ef12b562383920799a496cbc9ada735f0a305636df27f538b90d56628721e4b"
    "de"
  end
  language "en-GB" do
    sha256 "80046ee2543ed696958f6d5e859733a34a02e17e422fb0441fe4a13088449ba9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1cf9a9586c85d460fdd8fae8777ff69502391ada2271cf4c19c797257947c38"
    "en-US"
  end
  language "fr" do
    sha256 "aae03d2252c971efdea1017e43e16f70963eba1771005e77db1093ad5a111c6e"
    "fr"
  end
  language "gl" do
    sha256 "fc61fb0a2784a208c76a62e72d6920d48f53dc155144d98791efee859e7e4266"
    "gl"
  end
  language "it" do
    sha256 "0e98de56e7fa65fe869afdb48b360c9a4beebe334ee213dbb1ca88e9093bfebc"
    "it"
  end
  language "ja" do
    sha256 "9c832bdcbc76486dc84ce40991c7f2bb56e8bac00fa0ab3ae3dd4de965d41017"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8aebedeaad2745bf21d3dac979c49b0fcb8c0111c0f4da0da601ec38fc144ae7"
    "nl"
  end
  language "pl" do
    sha256 "4484d0ccb2d0561d8014492ca3facd22647180c0b2e8723532871d8d6044afb9"
    "pl"
  end
  language "pt" do
    sha256 "a614d3c045ddb2a0c9ee879e7b2f66dfe7b890ca48adb44cbe83f32a68508ce1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d371cce4a767d74a80d569ba7b7a031ba706be3eb74d1356dea2954bfc8b8fa9"
    "pt-BR"
  end
  language "ru" do
    sha256 "b3dcfb7f3f9d94e7e96cf1b31924c478a40a0b92449e0c0169e2ad2f78b36584"
    "ru"
  end
  language "uk" do
    sha256 "9806fe409232626164ec271410378f5a33f30b6c1fea5249043af97474e580b5"
    "uk"
  end
  language "zh-TW" do
    sha256 "dde41b4ed88b935881f2b0b5acc9af47aee200b60379382094f5b3589c92102d"
    "zh-TW"
  end
  language "zh" do
    sha256 "f8aad178c833346551083b298cfdf50e7a535f7ae8921c277d7ca92201a309db"
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
