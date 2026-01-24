cask "thunderbird@daily" do
  version "149.0a1,2026-01-24-10-28-16"

  language "cs" do
    sha256 "7bd5687786efc4951b18e20cf5bcfbae41b510fb7c50ecdc57c84bc101a52246"
    "cs"
  end
  language "de" do
    sha256 "2d80b45b6197e95550a272d4b135ec725f246abd6cc0ea2ab73d345cdc6e3874"
    "de"
  end
  language "en-GB" do
    sha256 "d74176ed2df4f04d521946bd2d44999854d07074590650148bec3a56f5904451"
    "en-GB"
  end
  language "en", default: true do
    sha256 "251dce1177e19df8068d138f39390aaf8314b5f8314215e6ace6050be015285a"
    "en-US"
  end
  language "fr" do
    sha256 "24e661e486b6011ef333bf6338444f0a64c015295a1fe5404f084a282c3dd5b4"
    "fr"
  end
  language "gl" do
    sha256 "0f7f7bd473d23c46e96f1d6bc4f509171f175e2d56241a85451d5d186026c766"
    "gl"
  end
  language "it" do
    sha256 "2a4fe318bb634a18be66ef16497a931d87c1f7a4d481e301752d7c36fa423294"
    "it"
  end
  language "ja" do
    sha256 "246b89631d4551169d3b3085393a1e45617db734335a90103a2236de775314b2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2c84130d8fca11e19d530d84e28bf288bdb7e279e52c9edcfccd26533b64eaef"
    "nl"
  end
  language "pl" do
    sha256 "11e7395feeff62507adfe1cc0724807deb3b94a0839d553639c2b670baaa4f1f"
    "pl"
  end
  language "pt" do
    sha256 "f98e8bc96dd22da5c86bf923a75734d4ebdf23b6cd9dbfa3bf40cd83da69a40f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "468ea768e042060d8b5fdcb540a764242bb525c79849c8e730465026e4a6684d"
    "pt-BR"
  end
  language "ru" do
    sha256 "17a674cadf3aa294d66b3b3b7b66e144bccd620b2dad29cb4116994f7f64c840"
    "ru"
  end
  language "uk" do
    sha256 "2bcdab445ccab2be9338e0d6d95c9a07103e94469bf1773bd23a0839f4c42275"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a31a4be2fa2643010437909ac1d199752e429b199a6240372f8d7ee53cd3646"
    "zh-TW"
  end
  language "zh" do
    sha256 "62503b3441b45d902c6a29880f14835747cc2035634a72ebdacdc330172edb0f"
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
