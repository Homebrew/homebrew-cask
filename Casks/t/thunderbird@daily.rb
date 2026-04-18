cask "thunderbird@daily" do
  version "151.0a1,2026-04-18-09-39-23"

  language "cs" do
    sha256 "0ed2788edff615f57c901f12fd09d732fd680bfbd2f854ee3535bdd21e4d704d"
    "cs"
  end
  language "de" do
    sha256 "1140c4251ebc0d4ca305674d1866b444fe1b62e2f17c64503c798e9521d33500"
    "de"
  end
  language "en-GB" do
    sha256 "0acfb1866332ae25f5415572e6508732950af6d6ced5018871605101be5a1f31"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2f847f768c8293e95884cd8e89543bd32c854425e2eb5941178f96a57c2921b4"
    "en-US"
  end
  language "fr" do
    sha256 "db7fb6cbacbb854bce3d30d22af0c604490d74c8bcdfa6994fd98cac5cad3fcf"
    "fr"
  end
  language "gl" do
    sha256 "cff3b144dc8d855e6a3d96bb7a9b4e874173921212b6070c88a1c0851839432e"
    "gl"
  end
  language "it" do
    sha256 "57a99792abaa04536bdcaa590d164c59fa410bfb22277809ba62f36fc2255a05"
    "it"
  end
  language "ja" do
    sha256 "c18b4fbd7ad80d0f6a4c014acd4310c5a77da8eb319cdc63ade3ee1b1ac54a8d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "693e26cc634158860ad989fe5d2aad862bbf32a05df61f0201fb995d214edfef"
    "nl"
  end
  language "pl" do
    sha256 "bec34b0da20f40b458c7d6322e3787acb4adeb7d6ea5223277c99458b1b78f80"
    "pl"
  end
  language "pt" do
    sha256 "904e2c9aad3f9cdbf19b782144713bd3e02411e1190dfde0ca57abddf5c0bd41"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "20411ed91d41e3d47cdacf4614b513e8d5b058162f44331dc3912955977bc596"
    "pt-BR"
  end
  language "ru" do
    sha256 "29a07b07150838f1593e578acf341efb92f02519e92a2515d0f1a838c152725d"
    "ru"
  end
  language "uk" do
    sha256 "a6ae126a250201b7b2172c12bfee95118bfc66162a8f709a4dfb72457a5a31cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "a02b16f8924a1aec68fd3c879f27e96d228bb3fb9129b3de0d6a1225706f6a9b"
    "zh-TW"
  end
  language "zh" do
    sha256 "025d3da84a600125c9778e090ba743b39883044646c25cb630c065567620c81a"
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
