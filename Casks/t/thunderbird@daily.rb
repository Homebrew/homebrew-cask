cask "thunderbird@daily" do
  version "150.0a1,2026-03-12-10-37-23"

  language "cs" do
    sha256 "3408881b2416ab69994c1a87db76d6a68cb04f85a3a994d43e2f1c928aa82fe8"
    "cs"
  end
  language "de" do
    sha256 "1b4072ec31e2db288b2219c6c439a6f58fa830c5e0895372ad03495cbbc3f561"
    "de"
  end
  language "en-GB" do
    sha256 "3d058fa1ce960ad5574346506186da4c044de86d0fdf0f8767ba7096934a2175"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72832926e706e520a7a876d87864cde0108d6257262ff17df68ce5f6d504176d"
    "en-US"
  end
  language "fr" do
    sha256 "1ef663ba6dc466333f0b0920292bc737cdee4d87815dea887a77c1bd9f44b6c7"
    "fr"
  end
  language "gl" do
    sha256 "0a7d283784d8587a90a95773424a91b3ea2833677699017ef2a6d275cf2da7a1"
    "gl"
  end
  language "it" do
    sha256 "79bc958b57608d270e3bfb3669e6c1eb6cf9968832e54e2b535e099850c7f965"
    "it"
  end
  language "ja" do
    sha256 "18c7b3575e0d356bda706249c29192173123fdec1b534ced3c01c4988fa9c758"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "461c1fbb65cebc5e1939fb582ba7dc26025024e1c01b6efc709c13a0d34d183e"
    "nl"
  end
  language "pl" do
    sha256 "92c8e851250bd1c6e8f5cd3f84b2061f113b683bd5bc598a4d751595b6df87cf"
    "pl"
  end
  language "pt" do
    sha256 "1ae8839d3f0765e43aa5fcc1b22608c3af816efcdc4d60a8dcca19bc34d4ab0f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3163c374217594b33204c4cc071dd6a3eba0adb73de2182d3b4f89f77cad4566"
    "pt-BR"
  end
  language "ru" do
    sha256 "8353d8b4e0e7d674c787287214dfa9458e9106ab28286273fa6337d030917c52"
    "ru"
  end
  language "uk" do
    sha256 "a340cf759cefdadcb46abde74f9bb083a5e771fc10907989e396fd215b472126"
    "uk"
  end
  language "zh-TW" do
    sha256 "8a13e186f65e4529532791b6fe774d35206c66b13a79300f0cdbbb8931c0c2aa"
    "zh-TW"
  end
  language "zh" do
    sha256 "b685c7e48d49ddf2cf18329204493b1c38257807c865e3944c49a5d8271093d8"
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
