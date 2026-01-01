cask "thunderbird@daily" do
  version "148.0a1,2026-01-01-10-42-30"

  language "cs" do
    sha256 "938378b3780606004dd75e553e7e628f48e339c94c70b5a961d7b15e92b864f7"
    "cs"
  end
  language "de" do
    sha256 "44e80d75a34826378d983c0cdc8d99bccc40d00f15c0f5233f5fe16aed3d960f"
    "de"
  end
  language "en-GB" do
    sha256 "281d4fe2b8dc72a3199962002c3c6086b061fdc9d7721e710f1ba3ad3066552c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "55af6a03b239cd7c879c384004f83e954285484e10a941819ebc75555d520efb"
    "en-US"
  end
  language "fr" do
    sha256 "1cafed7ebf0bff8cd0e84d498451ae6422c6ab1e868c104ebd232ca906fe0071"
    "fr"
  end
  language "gl" do
    sha256 "12bb7c89d9acc67d0d514ed2156da4dde712ab5069180d8d39a606916505eed1"
    "gl"
  end
  language "it" do
    sha256 "fd8eccdb76254abd1edf4e39acc7f610b68a54d6ab7b5534f8bfb2288923cc06"
    "it"
  end
  language "ja" do
    sha256 "6f4a5e01129ccc908b1ea58e68c6df7a9220105f7b54d544c0d66a8f0989ad34"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4082f29d38ba03c6cf0cc44210de8c9df94f86d67ac7594723eea3013206b7be"
    "nl"
  end
  language "pl" do
    sha256 "e758f53d35f5adf669ae0b0747dfd54368860a74fac8f90a678e546e7fb673fb"
    "pl"
  end
  language "pt" do
    sha256 "ddda19e30ae4e37cc018c502d3f67dc26a2189835656a38bc8e0bc06596d0d70"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8e2bc7fd1ac66f154b2c17dcda8201f40e2ab90af7499669869b549b811223f6"
    "pt-BR"
  end
  language "ru" do
    sha256 "36049b4254b444559ca8a11721c45241a547dffd258c14915c436f9d9ab09f26"
    "ru"
  end
  language "uk" do
    sha256 "1289fbe2a7cd07a5169dd2408948f4827c8185e8242f9a0a545c775267846ad3"
    "uk"
  end
  language "zh-TW" do
    sha256 "022492616d1de0e83e6053ef3fe80906c2b18960b2607b07eaf2626b639188c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "610b2c1b1b2ffc0ed53af070157a9fa35b3e3b024901e5160604cfacf5e499fb"
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
