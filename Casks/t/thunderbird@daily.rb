cask "thunderbird@daily" do
  version "158.0a1,2026-09-19-06-49-59"

  language "cs" do
    sha256 "08bba0a42720197bf8cb31ecdc8c9be14ca80472c8db70e3b579c0df4ab0b390"
    "cs"
  end
  language "de" do
    sha256 "9f34e179fafd56fa2f38045dbcde4d664205b4527a26dd2f97627d2a545eddb6"
    "de"
  end
  language "en-GB" do
    sha256 "9b271e2487dc5d5149f10c9332472a2c925a8e40c1fb21dd50e30c6c47d30757"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6e717ffaa77df212e9fee8f96fe2cb3f3007d5a0035e8379bc9d625c57ef591b"
    "en-US"
  end
  language "fr" do
    sha256 "8984e704857c612faea5acc148a5524f557407a1754201cf0927faeb137c45b1"
    "fr"
  end
  language "gl" do
    sha256 "760ef2f09b7b4aa1c950f3829539e75118dd760140d1af883a639a739ffb74e9"
    "gl"
  end
  language "it" do
    sha256 "5ce62cbbf1b4d7d9882b0da2aae9eca1bec040bb852d227491505ec37907a579"
    "it"
  end
  language "ja" do
    sha256 "e6b9f55a9aff70b72d09311bbaa39432d3838bfa41c556317b5ac093e447e935"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a932e7e2f00925569a6e59ae4167a5bb8e5fa9db807b10bfdfd06e8545a5220b"
    "nl"
  end
  language "pl" do
    sha256 "d0239698559e186f05f20f0da029884989282e0261550882af86f5b3a9840e06"
    "pl"
  end
  language "pt" do
    sha256 "4f74b1c52d8a799174c411d19c97446014fa4bb71ac4003d47d50fd4bf5b5918"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6f6a9dd02be943f65bf11e71854c8c21c365c3f38a02bec68dae8059278266be"
    "pt-BR"
  end
  language "ru" do
    sha256 "2eb552b73f95c097a48e4af5df5ebd08f3b6265e698baa54ac7d2b3d52f8552a"
    "ru"
  end
  language "uk" do
    sha256 "a8db29bf4dece88b929746bd6c85b8eeaf085662d58506c4065e9ead1f135a47"
    "uk"
  end
  language "zh-TW" do
    sha256 "b5b934601f053b3491bc327221b56eface2e74c75ec9dda0ba06fbd17a1e3169"
    "zh-TW"
  end
  language "zh" do
    sha256 "b4e287a006442843cf9fbdc84967358cc0eeed48d978a8981251d5ae10b4f45d"
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
