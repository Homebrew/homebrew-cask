cask "thunderbird@daily" do
  version "151.0a1,2026-03-24-10-41-30"

  language "cs" do
    sha256 "67b3602b51a5b1f445c0020802db1ced7336ceb9bc4cc9b9a730e7a4536c71f2"
    "cs"
  end
  language "de" do
    sha256 "1a595f6fb0713872318e8f835e7349e8d56dbdf7f0ba914539dab0d9fdf325b9"
    "de"
  end
  language "en-GB" do
    sha256 "abe2da8a62396a2b60d1b3c68a3d8f8eeb9d32a512c907cf0fc1f8837ef275eb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "da96a986bea117ea96dead226c98aaf30400c53c0dfdbe874e8e1944b4adad9b"
    "en-US"
  end
  language "fr" do
    sha256 "2600357dcc6980d094cdaf1cf22dd207bc58dec8c98f9f7ea32e5061b2c315df"
    "fr"
  end
  language "gl" do
    sha256 "f4514430945932b68fad3b1087d56d35e0e9642d086fc7d6c79fd3e1345ef606"
    "gl"
  end
  language "it" do
    sha256 "56ce17e08f567683bcba428e2c52e4b6b9d5b5835720de5cd7606e423a0967df"
    "it"
  end
  language "ja" do
    sha256 "e019c0e7bcad90d981b661888b6da378a718b349ee86066b48f86163589b676a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d06441e4ee9b8e593b2deaf46bd9e9506c80ebbfcc46b9b4e6e21ec48291b614"
    "nl"
  end
  language "pl" do
    sha256 "dc7440cd536e8d18b11436b7e070810190db3c935939c79efe58038f54d35922"
    "pl"
  end
  language "pt" do
    sha256 "b6e591f9d0f47aec9be6a963c1d045d036fec0d5645ce0358e0296dca5d3a5c9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "655aba78d5548354c0818cac1f5dae734e6eb6bb1e2c7c9fc32ba1a7f23b60c7"
    "pt-BR"
  end
  language "ru" do
    sha256 "0409f0a6c2db5e2993c89df12a3e89ce2cc8b560fbcb2b6048360885890163ed"
    "ru"
  end
  language "uk" do
    sha256 "e451e8eba8713ff72e40904e61faae65a42d66c6b40a1c6bcdbd7cc1d7aaf2d7"
    "uk"
  end
  language "zh-TW" do
    sha256 "0afe829005463956a425c1cab5868c27d5470a426323a7552ed11ea00199aee1"
    "zh-TW"
  end
  language "zh" do
    sha256 "8743483cce368ad8d1358446bbaad3d9f729d0cc1f7e30282240f0ea09aea231"
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
