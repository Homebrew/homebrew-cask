cask "thunderbird@daily" do
  version "154.0a1,2026-07-13-10-06-51"

  language "cs" do
    sha256 "51ff5455dd43b55e63fc26c1de94ba2e56d4786b35f4ed25e95b5e468f5d25ff"
    "cs"
  end
  language "de" do
    sha256 "5904eec4938348289d56ae59083fa534920cdf76f540987d96779030f22bc03d"
    "de"
  end
  language "en-GB" do
    sha256 "ff955f5af7d6d0ee210c7e2193eff60096bbd0f79f4c84a4dc3c6e9d62b91701"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a2d9feee52b8cf275606d8a44dc5cc83dbe9ba9f053d56258dcfff6f3f1002ad"
    "en-US"
  end
  language "fr" do
    sha256 "b029314cf43375f18ec61097c7376eabc8feb249a7d6627b3fe25c1366865e5a"
    "fr"
  end
  language "gl" do
    sha256 "fb3044f2c63b2a92614f1a2fa29ea5102a2b09c45bb17462b2159e46e3462da8"
    "gl"
  end
  language "it" do
    sha256 "0870cbfd8f0e3b54779e339dd8ea832080e443e4f8883d230cb1c7165e1132af"
    "it"
  end
  language "ja" do
    sha256 "780de400dd782e19e965269c24a85fa94f883386a63095e1ac158966aa89b600"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1817d295dfb4e356232cc22bbf3dcfc814ec5a2eedc5d165437141fcab565c6e"
    "nl"
  end
  language "pl" do
    sha256 "c6c4204446719bb39bd7c700af382a74589e5684ee3c5d6ff3b169ae0601eea6"
    "pl"
  end
  language "pt" do
    sha256 "7f639fb5913d0cece7c3f4fea8482138c40cca9ddd8d1a30e2753a3db3797692"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "aeb067b863f11434e2dce83c5d3d90baa663c5f1cf8e821a57ac3970b9e2b67a"
    "pt-BR"
  end
  language "ru" do
    sha256 "a7ecca44afffe89d2ed27dfbb2c8436d6ba61d6648e5aed2c3a9ffcd26294026"
    "ru"
  end
  language "uk" do
    sha256 "cba9a2f3bfa4e2a5c4ad90204a587d63ccf6e687f79b00924e0e13803a5c298a"
    "uk"
  end
  language "zh-TW" do
    sha256 "73750b0b7052f2a7916510e489ff479afb598956e43ae2dfd33adab954be76fe"
    "zh-TW"
  end
  language "zh" do
    sha256 "cb67168a668a32110b54b8a5f7d6d18bb28382d8750dd01950fca2c8d168302f"
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
