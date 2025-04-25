cask "thunderbird@daily" do
  version "139.0a1,2025-04-25-09-55-48"

  language "cs" do
    sha256 "f16126ad3680eaa8576757c49dab1ea0adfe9184903ec0980c3bc5bf70d9accc"
    "cs"
  end
  language "de" do
    sha256 "5c513d2beb56c978bd3faef6409ccf80800c8437cd32411b41b8427e4c88fa94"
    "de"
  end
  language "en-GB" do
    sha256 "f6462941ed4421c6c4abad9a4c722e8495f5f8eb9911a9f671abad2490da5479"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d79092d0405f241fd263b7cc5451f57f6d6c356a095a1837aace606cc60c3e48"
    "en-US"
  end
  language "fr" do
    sha256 "c8b0e5512d9e04b57074841127d0666eec4670b3702b604f44862162e7399861"
    "fr"
  end
  language "gl" do
    sha256 "198a973d5bbb82c55d01b42251dc97dc9fd7f8992702b7ce9d3af3f2a0897600"
    "gl"
  end
  language "it" do
    sha256 "e221cc7a6a22a095150b624e08b8c5ab713c70177dec6c68bde9c319a17dd182"
    "it"
  end
  language "ja" do
    sha256 "fb725b1da5efd8eb31cd955c88ae0fceea5cfa933a4149ae2feafb6617293064"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "32fdf32fa7fabf194325be4594c6e1cc3fef2526d5d67b63240847fbb220063a"
    "nl"
  end
  language "pl" do
    sha256 "59e10ac5b49764a63f1d061057a37f6ce0fd9655db3cfa97e2e4d7642fee2138"
    "pl"
  end
  language "pt" do
    sha256 "767be80761acdec22d2516c2ef7e9517b27835dcf6d62fb5cd9ed16cb13b91e6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "83592067577c360c3825c0863fc3298e6984edcf0d15c84a2f3dafd63e4f682c"
    "pt-BR"
  end
  language "ru" do
    sha256 "870563f8a2e265f38b0b80c957084222ec37e4c3b624458ccd233e786cdbd6b4"
    "ru"
  end
  language "uk" do
    sha256 "7192c6f8cec5b08c8dbb6277083ee6d66fb80f1fbaffd644063bbc3e956c2088"
    "uk"
  end
  language "zh-TW" do
    sha256 "44763e072417b676ed15e3116e11d32410bc7aaa6871f5ad590a6edecb46a2de"
    "zh-TW"
  end
  language "zh" do
    sha256 "8a0a85b502bd5d1440c519bd0a05be8a666e0a7b93cd8508e81df4133634df8a"
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
  depends_on macos: ">= :catalina"

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
