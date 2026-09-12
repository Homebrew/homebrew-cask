cask "thunderbird@daily" do
  version "158.0a1,2026-09-12-09-42-12"

  language "cs" do
    sha256 "67a5ee62dd7a17f7050c2432cd2df885e6140b3f9ed3277d22e0bf2443015b30"
    "cs"
  end
  language "de" do
    sha256 "2e225c019974f8cc5993f21ef27dc9b00537ae196a3b72a8459769f9cc7696b2"
    "de"
  end
  language "en-GB" do
    sha256 "71434c2d6ebac905bced9a0c0c6ef031218c8709be9a450958a10ed0e2f776ec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3a0e0380858ee6c0df33a62e774fa41e6f99d77c38e5e045003edf2c6e8e968c"
    "en-US"
  end
  language "fr" do
    sha256 "7463b6c0a5ae353b1f736899c8b4edeeddb241f41704b40ff0560348300647da"
    "fr"
  end
  language "gl" do
    sha256 "73b9f1fef0edbf7c3fa168051668e9bed9f940caf99ee69f518ed58f48fc5f17"
    "gl"
  end
  language "it" do
    sha256 "b15c5ffb29bf8ad0f510d91f70d3d434a2393530a31a73e7c68200a8b07c73b9"
    "it"
  end
  language "ja" do
    sha256 "113c3ca672755094fa3ce0a6efe56112b6fd3e39c702886c129bf4c82cd52ff0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a486afcaaba140d80700caa5b8f57739d8bc2b745418d74999e593bd59414813"
    "nl"
  end
  language "pl" do
    sha256 "3ed5a3def24b27c75e258e007b792632fe9305f22bfd63a854b5a07fef1729bf"
    "pl"
  end
  language "pt" do
    sha256 "083d232b538dd7b566cd8a19f0bb855994f3e119297b0f7720ab8c8265c6aa78"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5dacfe0debbf27deac4e6c5b591da0c76e29e4fed8ab6e5af70b887110b99b64"
    "pt-BR"
  end
  language "ru" do
    sha256 "0ddec08e57a92d835b4f5e0e387e01fde7946b17444e7244535f667e2d71e74f"
    "ru"
  end
  language "uk" do
    sha256 "0dc03a553fe723d1f06b176a58cedb4f7d091ffdce85ae9241c1eab429ae447b"
    "uk"
  end
  language "zh-TW" do
    sha256 "17afb105080694875438d325bd64a78f93ac3cf9d2c74fc42695ae2eaefd09a3"
    "zh-TW"
  end
  language "zh" do
    sha256 "f2d8d6b14647597f1fc82c0ec9ae496a35f29936764f240900846958bd33451a"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
