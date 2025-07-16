cask "thunderbird@daily" do
  version "142.0a1,2025-07-16-09-41-01"

  language "cs" do
    sha256 "012cfe26b5eadefb39ee52c20a6e3b90ff6bd68cc6dd3f1d50596d1b87cbc2e1"
    "cs"
  end
  language "de" do
    sha256 "0ec034800c27e6f812e4a713edd102ffef8bc5361c7963416f77548e598daf2f"
    "de"
  end
  language "en-GB" do
    sha256 "0bd2d22e1040475734cf5fc492030d3aa8ae712c65ecc67c51f6528c2df1f9fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e5bc2305c912e6a4c1766dbefc178e9b5804e3293252f587168fd8e376df1f4e"
    "en-US"
  end
  language "fr" do
    sha256 "839b4561bffc7fd648a99590a0fc5216e44719f5f69c0fd19d570e6cd373c24e"
    "fr"
  end
  language "gl" do
    sha256 "515d4338f44850c22fa8b4899fc5e3f5a3b2f3b1f27eba1a93ee8412114710b2"
    "gl"
  end
  language "it" do
    sha256 "44759e8c05a1b199ed7af094db889c8219d02bf141c6e5f4ba7a9ec51682d63a"
    "it"
  end
  language "ja" do
    sha256 "21086b6b420ee2758dc9287b2ed0773e75257d243217e6c29619f7636e0ee2ed"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c48baab25ad2c7cfd741a53dd2c3c1ff280b30e7070a0105da3dcc809e320315"
    "nl"
  end
  language "pl" do
    sha256 "88eaa7a7b0ae7dfdee6f5a3fdd9cda12adfeaa82d046f44db07a25f5c6829b1c"
    "pl"
  end
  language "pt" do
    sha256 "eb920235de6269fc82b650126055d7d4ca5b860e8acaacc77254eda4237133af"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "eb58cf7b961cbaa6af28300ebb8e58d595a1999f987212186b2274681525e793"
    "pt-BR"
  end
  language "ru" do
    sha256 "9fb6efd933999421fc2b814f83ae1b40927c51af3c1314a00b34055c91f54d63"
    "ru"
  end
  language "uk" do
    sha256 "0dba25b26d36512c9876834d28457c10e11d92a6a8794cd62c8eb9d900baa440"
    "uk"
  end
  language "zh-TW" do
    sha256 "8cdc83cefbdc97c8013445f6eb4112d427c1a0ffe2508ca88f4f060a5d60fb53"
    "zh-TW"
  end
  language "zh" do
    sha256 "8451a708db40d7bbc1bd869aacedcd7c274659ff00918c5182b0d7e986631c14"
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
