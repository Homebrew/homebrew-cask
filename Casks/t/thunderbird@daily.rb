cask "thunderbird@daily" do
  version "154.0a1,2026-06-28-10-15-01"

  language "cs" do
    sha256 "5b33712ff67038e6998bb6b248f735c382bfabd0531033a29b10659e353c5fd6"
    "cs"
  end
  language "de" do
    sha256 "11fe077b5058b9118f46e0dc2b162fd19e3d1bfe5e5d76fa0cd0bbe39e50e04f"
    "de"
  end
  language "en-GB" do
    sha256 "fcece1a9da28d268a99761ee6251012bf17e2aaba83adf634e0dc0d9af592131"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0c79b2db3167215e9ef62eb8342db3690f831a947d1c19d47b80f230a688323f"
    "en-US"
  end
  language "fr" do
    sha256 "7605e5ec19250444fa3cf85b224de10aa94b30200accfaae866d8ca06760a9c3"
    "fr"
  end
  language "gl" do
    sha256 "1a55d0e9f0db1eaf94ee9b0cb183facea6f54c01d5b6f0d6ada6b5fc9de33488"
    "gl"
  end
  language "it" do
    sha256 "08b19e2974c8f78051f209b33d5a6e6fb86a5db40e9e8dff1457eb91f38d248b"
    "it"
  end
  language "ja" do
    sha256 "86255328bfa310b64cf3e3adef7e1dab0541acbc70b6e20c0d34329b48aeae33"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "024aa8a88349d8178c6a228de11342e85efaa910da71f4dc4cd3af6e64c0181e"
    "nl"
  end
  language "pl" do
    sha256 "a90c99e4a1e5eeae5a2a2ebd0887c61589fb0a1612dd5de2834678b2d4530d10"
    "pl"
  end
  language "pt" do
    sha256 "3dad319e06224eedf660eabe62062aad4333ddb8cd657d383784db10ed34f5e3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7e0b0bb656b8b179de38af547b5761a5daaedb188a5a057a2904635fb40b894b"
    "pt-BR"
  end
  language "ru" do
    sha256 "4d16ecb1f1c33592b9f86f5db079b420768c041956a0758d63b19b51ef47b1c6"
    "ru"
  end
  language "uk" do
    sha256 "d08079cd05598bea03c49c7e155345bdd995c350bc8ebe9d98dde56337f64b1c"
    "uk"
  end
  language "zh-TW" do
    sha256 "8469b70f99beb9e59ef7a5807264a9bc9c74b5a6cd64c10109222237e4fa2493"
    "zh-TW"
  end
  language "zh" do
    sha256 "5a514248c88f7530c1125d087888befd3dc1a7a7aaf4e683a1d8c81f0a740f79"
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
