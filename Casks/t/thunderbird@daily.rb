cask "thunderbird@daily" do
  version "153.0a1,2026-06-13-06-50-21"

  language "cs" do
    sha256 "843b3d6682408ed34ad1e597809ab19948b88cd1df3b89fec61acc35789a96a9"
    "cs"
  end
  language "de" do
    sha256 "1de5eee58f3f227b553c8ab07c1a0ba168664432c68882a4347e71635f74fc99"
    "de"
  end
  language "en-GB" do
    sha256 "6a62a70925fedbcfe92810dce18da1e6697fae8589b0da3a9ad40b71297f84b0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "afb6ff8ceaa59689c62a5f5126466061d72ffe2e9df2ddd7276b21d63bfe186c"
    "en-US"
  end
  language "fr" do
    sha256 "7cb5669203477f62595fbed8ee33c9b8e26e3f0a5ebe442f2f941a364d7d665a"
    "fr"
  end
  language "gl" do
    sha256 "6af0135a54639ca67b7c7d5c5a98f108997d062afca4f690723cac8d3a095f6b"
    "gl"
  end
  language "it" do
    sha256 "9ba66f775e8a0bb9e937e09b557ef49ad086ff91e4746cee370fce1d88a6927e"
    "it"
  end
  language "ja" do
    sha256 "cc419ff75a15ddd636feccc71d49a3b3c4f3dba0bdc617f1358e0e919096e7e1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "93b8a2861b002ade2676a015e202d02c8cecae28eb9d3de69f7d5f66c80d0451"
    "nl"
  end
  language "pl" do
    sha256 "a25d959123b534249bc876ce4a5bf664db8eebc004a725d4b9a5015cba18af1c"
    "pl"
  end
  language "pt" do
    sha256 "6738d3fa565216d4e9b2525a892f99ce2c56e2be2023fc5d8565eef771ef414d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "17b25061898a9a7ca096496fd4b152c8eddd5a05b029d413ece0c11588238818"
    "pt-BR"
  end
  language "ru" do
    sha256 "b3ba492566f0f06aa641c0aca91adcf71950f33f85c70165dba8234b306560c2"
    "ru"
  end
  language "uk" do
    sha256 "aa15c2cef34573f0e973d8d4ee3ec6ee3be24d9747e26b08803789fac247d0b8"
    "uk"
  end
  language "zh-TW" do
    sha256 "10bdbd4dbed7456848aee2778d8384bc290331de29a6da655b8ddbff21d6c5a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a3b819ace41b941f6e1e875774214c94a1ae112940f9e8bb593087077abd7a4"
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
