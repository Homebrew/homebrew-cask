cask "thunderbird@daily" do
  version "154.0a1,2026-07-15-10-36-37"

  language "cs" do
    sha256 "935bac1e7e6cf80794154551b867f88af7776ca69abb77eadcaaaaf773abf8b2"
    "cs"
  end
  language "de" do
    sha256 "76ae2a85b3c9111f12dd8ea62e2d7fa668ccc8873a839becdccfa249e86fad26"
    "de"
  end
  language "en-GB" do
    sha256 "8fd25ba4f4c7127b1e3eaf8238242227b7c263e64e96e81e0595e58275576916"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4c871fb79c7825472187ec189c22151c213efe91b01b2e90aff8339ccc8d236d"
    "en-US"
  end
  language "fr" do
    sha256 "22e12fb6c6c000b62fc2b85015b35743f832bcec89cdd510121e56fd5db3e051"
    "fr"
  end
  language "gl" do
    sha256 "37f6ed9d94363730cc94cfd063208294f8932f2a011915a557bff33f548a9eb2"
    "gl"
  end
  language "it" do
    sha256 "38d0c9efbaf868d833da0bb613daaac3cab53eb8a4addeb7fabae6d32d190886"
    "it"
  end
  language "ja" do
    sha256 "9099eed378150b86447f74f2d8d942f39d54ede5f52fbd728fdfb084a8ecdaa2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "954f48c7aa37ab33642631d754de80f3f3090ba66708919859e92a099b23c617"
    "nl"
  end
  language "pl" do
    sha256 "3fb92aeb8a6f932b5bee37bb43811e3534ca3bf2b35c2e03eef9aed1f49d3832"
    "pl"
  end
  language "pt" do
    sha256 "7b3f8236d3f473aeb883a6558d7ed020b1020e0be06b62018063d47046678be2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "cde646ad03c9f3be0d297c999c78f362d391a41117edc27fe1d73a99760c1b4a"
    "pt-BR"
  end
  language "ru" do
    sha256 "60e8c5d8ee959060d4cf3339888aeb7a5542e91f617688c9b78e0c1613f63e8e"
    "ru"
  end
  language "uk" do
    sha256 "4712f7c24657bdf8ce1b384262422e8dbcb5f0c6baf7201c5a282d8e68afe507"
    "uk"
  end
  language "zh-TW" do
    sha256 "f1d49d871dd5dc9d178db6d4097eea19133e6966e4407a6462dd418d1a3f897c"
    "zh-TW"
  end
  language "zh" do
    sha256 "6b20e1a385eb80d1d5c4a99237710abfe89d8b476337d328cbd74c0c38c25134"
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
