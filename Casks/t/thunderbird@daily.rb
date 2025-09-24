cask "thunderbird@daily" do
  version "145.0a1,2025-09-24-10-23-40"

  language "cs" do
    sha256 "078d61aecd4757fef6cead6b87dc0643f60f3b11d5f7e6fddfeeba239786fa67"
    "cs"
  end
  language "de" do
    sha256 "5c7a5a918509c90fbab0a03acb1c7362c189c5810b1acc9ffccab645f2776912"
    "de"
  end
  language "en-GB" do
    sha256 "7a73550aa0311d3f201d0a31a6f7b494951904b88cba744219d7e3a9b8338fa9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e3becbb2f8a161d3f7e57f6812e85f5078f9d093c76885e86b0cc166d01cb00"
    "en-US"
  end
  language "fr" do
    sha256 "d10fe29f02b75cbbe05298a169f4a210f0b404471df611dd02ded4b82bc78482"
    "fr"
  end
  language "gl" do
    sha256 "dce5f463425b9b8beec47418b37a6b18bb02ff2381fdd42472e77754fc43c351"
    "gl"
  end
  language "it" do
    sha256 "8deda3415ed02efa9bcb584dd248175fb3a21765512e3a17975ca9c05ec5f637"
    "it"
  end
  language "ja" do
    sha256 "ff0e22d80d79b7f7a8184887a14ffe0343ea7e66c0b351907afdbb2b17faf8ee"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "227f37d12ac6864af060cfd3ec7f44f0c16fc5edee73f5d5247fd7de1737bd68"
    "nl"
  end
  language "pl" do
    sha256 "b431b45b3eb6d6c77d9405a5f6a741aa17c10013731a10b87f3762cdc6c00cbf"
    "pl"
  end
  language "pt" do
    sha256 "b880fc36b3f821b06eef1fc857720ea102974001094f509b27b16321819217b7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4daaa89cb74386960519fbd561a657ea1100abaca162327085de51c4bb354b9c"
    "pt-BR"
  end
  language "ru" do
    sha256 "bba7a924e445a03e820bd3837c540f7de45478045260d09128731558575b5a39"
    "ru"
  end
  language "uk" do
    sha256 "a06f001491fa70e848b640f3f66621985c6affdadffa742317632714eff3747f"
    "uk"
  end
  language "zh-TW" do
    sha256 "79f12503303f9d22201463b119ef63707017899b073568bf1a5f74920be44ff1"
    "zh-TW"
  end
  language "zh" do
    sha256 "718d3cdda49c5e0dfa973448d2b68dbdce6e79861e1c9117ec3e4176fa2e8ced"
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
