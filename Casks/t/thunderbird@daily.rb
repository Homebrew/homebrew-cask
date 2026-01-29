cask "thunderbird@daily" do
  version "149.0a1,2026-01-29-10-08-49"

  language "cs" do
    sha256 "575225b1de952b60ebdc6c513184b01a88eb4d9403d71be3b1ae219fc2b517d8"
    "cs"
  end
  language "de" do
    sha256 "4721b02d06a16d661c074a8a6b7777a25ab09e41296c12fd28104b4b74ea08f9"
    "de"
  end
  language "en-GB" do
    sha256 "aa5e6b27e83be36dc4ed210a73ad484a10df7c6ce64125e495e6832942eee20c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f29e9cae0b841f4b38cb67c5996344346a3f35aee3995f55dbfd979765279633"
    "en-US"
  end
  language "fr" do
    sha256 "f2d0cf394f7bc95e547659e610c2f327440c8ae24ca5c69c0b37186e55bf5354"
    "fr"
  end
  language "gl" do
    sha256 "a28694bfba13f663b4af209950dd9725933c9ef9c41eeea68a8757510336e22d"
    "gl"
  end
  language "it" do
    sha256 "ba9d860be01178fe1f31a933d8c9bff01eed13a02d76bf705131391015e9807b"
    "it"
  end
  language "ja" do
    sha256 "6598501b3cbf990cac59827d901950f5d8243b61fa754288634e861706642376"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bf95db434d96251bd0cee523a26c4599ff093e94d73e6b0c0b7dedd4592815df"
    "nl"
  end
  language "pl" do
    sha256 "23aa21df2bcaf559adfaff74e483108373cc3e64f6761a9d04a9210ee6696949"
    "pl"
  end
  language "pt" do
    sha256 "e2fe703386b1d47d0ceb406e5c33e749b49fa80ae538c13d878cae93f6c14ce0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6ac38b84e247cb5281673596e50c2b6553d3def3ed0535b1aae4bf986f1e2869"
    "pt-BR"
  end
  language "ru" do
    sha256 "492eec0b4c950e52f0cccd4302e74d0c534c224ac21365bb9b9815ff1b739043"
    "ru"
  end
  language "uk" do
    sha256 "ef5bc3b22f75ce254b6e19a47a64f1653fed5e4e746ae92119bd7bf6e40732a0"
    "uk"
  end
  language "zh-TW" do
    sha256 "f004e41dd34b467c9f0e65914db9bc127e90da0a079a7607b309de6040ffda55"
    "zh-TW"
  end
  language "zh" do
    sha256 "38b36f217b8b13e517049c98260da0835a5f1e87572a16a8e3aef990f53451a8"
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
