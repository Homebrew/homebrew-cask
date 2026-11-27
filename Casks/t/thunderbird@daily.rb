cask "thunderbird@daily" do
  version "163.0a1,2026-11-27-10-06-11"

  language "cs" do
    sha256 "7ac6c75a9e3fee92b422b6297151c4732b9e65c4fce7884362bbd7ba84035861"
    "cs"
  end
  language "de" do
    sha256 "1555fa80edfafa0c9f1c944d92698712fc4e41c50697d18c9f2d9d9beb5fec13"
    "de"
  end
  language "en-GB" do
    sha256 "eed0764ba34608490a34eb41f7127c07ceba35c9880a5600b4241c611f54449a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "94e3ed9e40787ac80003787fc107c874b2c59d5d4f564bd5a9640e0408e12257"
    "en-US"
  end
  language "fr" do
    sha256 "26a0a6bc2a6f0252ac8a5dc20e95e17aed3b8fd5984c7457050d34ebfc642f87"
    "fr"
  end
  language "gl" do
    sha256 "b55569484f1e22c472f79bbc6eb158764136488a09ad028472ce1ed9492b85f2"
    "gl"
  end
  language "it" do
    sha256 "83d7e4cf9cc1c820c79a631dcb681ff85919da98d1969ea67b3a87f624c13a79"
    "it"
  end
  language "ja" do
    sha256 "ad5708dccad347b75db74de9958c8fffb30343e7c73d6b05a33913810f3a35c3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7aa34c9b939815eb688b0f3a13a6adeae3d40fb6adcbdd80d6016641e22b8ef4"
    "nl"
  end
  language "pl" do
    sha256 "edb94a73dd43c4e064f06d11f713428ed5a5f39d1f26e33a900f0dbda5b55e70"
    "pl"
  end
  language "pt" do
    sha256 "7907a6187e80de5efc170776706ee81a9b88088b64a99febb8d93bda657b3c73"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ac6cca38b4901e0e085fd599df97b0c81c8a642dc1e205fb6c2846f72bd12dfd"
    "pt-BR"
  end
  language "ru" do
    sha256 "7a961e81c20c2833bd9904ea7b3313d43b023e01d9fd308a290ec4c1f36e7895"
    "ru"
  end
  language "uk" do
    sha256 "5566cb48e178822b9a17303c50a82e41c70259915805348b63f87843292f7daa"
    "uk"
  end
  language "zh-TW" do
    sha256 "a59e8da2cfc211ed7ef1c340d8af036e3a37aa6705528353871c0e14ccc01443"
    "zh-TW"
  end
  language "zh" do
    sha256 "f21401693cdb27d5be52ea73984f241696c6cfc851c57c343b41de121c3e6b54"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{year}/#{month}/#{version.csv.second}-comm-central#{locale_suffix}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
