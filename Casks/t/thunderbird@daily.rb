cask "thunderbird@daily" do
  version "155.0a1,2026-08-08-10-45-03"

  language "cs" do
    sha256 "f2c7f305d271bd3659b5dae894455346b385fe8a334c04c2c57caeecf406864c"
    "cs"
  end
  language "de" do
    sha256 "464e2f7f40448b983f6117a30f26da7cdfa0780d5a320238d46ac9b34684330c"
    "de"
  end
  language "en-GB" do
    sha256 "eff3b621eb981fcbb4e5f40f24ea4087851135a3ea3f57bb7418b869908daa3e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a933f3f528f6f2e3a844bb606c0c159b2e0cff16ad6e099f2fa35457a9bf6aef"
    "en-US"
  end
  language "fr" do
    sha256 "5fbec0284772c4f5a801eb643a5663b49fa8a869f3caa05f0bc2de5dfd8bdbdd"
    "fr"
  end
  language "gl" do
    sha256 "58326944fdef4b5d48909229c68fb1fb8c6a1db9f1c6edba01ad7eaa29b1e265"
    "gl"
  end
  language "it" do
    sha256 "f6dc8057be3d863352ed90184c7ad43110d12dbd50322b5fe82b4e094f176fd8"
    "it"
  end
  language "ja" do
    sha256 "715dc0a9a824edd8eb8be44c8e3d94002e0d27eab6740828b2d429d23346efe9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2b22ed1daf58acddfb45bd60aa5f53518abbff0d1413824c1688b3519a59fb79"
    "nl"
  end
  language "pl" do
    sha256 "415f7998b41a340e22f4b2ba60b3f2ebbdc876a84c82827115023d2865957b81"
    "pl"
  end
  language "pt" do
    sha256 "d1dc8be59ea83c3cb1f63794f4378611d588b3453442ee9d439b339d2a15d4ad"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "cb28504811a3bf6ca12af96393287b9458a2147483cf2da705a5ad26631a4256"
    "pt-BR"
  end
  language "ru" do
    sha256 "103b1a0cca7f07378ae32bafd5a1c9e1a94bf42a3547d915723b61272d5fd901"
    "ru"
  end
  language "uk" do
    sha256 "dbe0d40aacf829b3b2a23c62c15ae1625632f0600fc8d8a74122801bf8ff3276"
    "uk"
  end
  language "zh-TW" do
    sha256 "7ae5ec52464bdeec0c15f42283b7da7fa644d0c7f3b236f4636ae04befcf1f03"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ebe5b28491de1a45445062ca24c5864889372c98dec6da995a22cd1f71058d4"
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
