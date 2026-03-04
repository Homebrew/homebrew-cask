cask "thunderbird@daily" do
  version "150.0a1,2026-03-04-09-36-43"

  language "cs" do
    sha256 "e892ee88ccb6db9c8440cf0c508550ba32628c38a1af6cff14fd72bcf28d19fb"
    "cs"
  end
  language "de" do
    sha256 "74a060487705bdddfd52534c775c568fc039628c7be59a5926b9e330a300a5e6"
    "de"
  end
  language "en-GB" do
    sha256 "b9c9c17006571a346d0eae44a9329547bd9ea48a0cd67f5b3ed357043297bc37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "637eaa195c3aad150e07f39f4a21cebfb836d18807e36f2cf6d6c47d531a36c6"
    "en-US"
  end
  language "fr" do
    sha256 "273b22fbfd3a472eab69ee4587856ae64f11efd8033c7f942d6817db60f89a42"
    "fr"
  end
  language "gl" do
    sha256 "62c68cfdd27a0811c20ae60f0a993bc11c2080e217a1df38a1e5b165399cf1cd"
    "gl"
  end
  language "it" do
    sha256 "5eff7a7bfc9783e1a681f124c03eee285a72872c1d757cbd146c19b110deb92b"
    "it"
  end
  language "ja" do
    sha256 "10f62047b87ae8b6ec5196727003628eed1fae313983182075a5ef250d6a8cce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3533f85d58db57d1ca6464922c363d5fd88d7dd495699a893514d81bae5e8481"
    "nl"
  end
  language "pl" do
    sha256 "5a38cbb4557116f405c85ad010b75203dbcf4bff3b03b3d2c45d7f1f1f3ffee7"
    "pl"
  end
  language "pt" do
    sha256 "c0c4253c91dce6c5bb92c969277ffa88d112c0223027bd201be08ecc4adb28a5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e4572fca1f2a1c6787a173b2339f5ce69d27b853cfafc7c4cb405938fa585f03"
    "pt-BR"
  end
  language "ru" do
    sha256 "80b6a4137868bb6b528cb9553acc77c89d2e28b32306a5c2279665f268c414c5"
    "ru"
  end
  language "uk" do
    sha256 "a7a54468b83cce25fb0884bfec5ad4896005c8e0efa04fe9cca913635ef3c175"
    "uk"
  end
  language "zh-TW" do
    sha256 "172ffb548aa8f2f3900bab98025d5a4cba328517479a9d7e4aa7957e6e43c704"
    "zh-TW"
  end
  language "zh" do
    sha256 "727d64ad4efb9fde6f17889d176a3ec03dce033afbc24e90868379da61ba1f7b"
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
