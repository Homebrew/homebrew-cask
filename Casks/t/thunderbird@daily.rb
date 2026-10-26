cask "thunderbird@daily" do
  version "161.0a1,2026-10-26-10-09-11"

  language "cs" do
    sha256 "0ed81a10ec0f8b5c10655ec2d90aca233bcef433d0a1e844783fba39056dfacf"
    "cs"
  end
  language "de" do
    sha256 "80df48efb8b23fe8547849a2ecdfb7b33fa2cfd4d7342a9be13de016d37807ff"
    "de"
  end
  language "en-GB" do
    sha256 "f9189b58c92b3ec22ede972868e8b678bc6add65498a5e7d5fef505e6d982e8b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "98fc32987c48dc1ee76f157879a7e83da127e46d5101815c3473511b1fcfdf35"
    "en-US"
  end
  language "fr" do
    sha256 "147e6711d3b18d570ae14d5570a01feaf240d085b777ce578ef85bd73b01f820"
    "fr"
  end
  language "gl" do
    sha256 "baeffa327c9f625e9cca070482b6d09498e406738db5efaf50f6daecb568c313"
    "gl"
  end
  language "it" do
    sha256 "714b9a2b48ab2ffaa6b5b7a236fac20f569883dd863d72d07b29c0cade69dbd8"
    "it"
  end
  language "ja" do
    sha256 "b615a8033a9b01ef6a6664ad9fec46db2dc096eac1775185f4e4635a73a8fe05"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9f68bccec7646df189e81135e4f8441617003a0e92d2d148200ed0f30406e8e8"
    "nl"
  end
  language "pl" do
    sha256 "3a786cedf0c6982c7db1430b7953bf935e3f1d125ccbef22c6f10b28ac59f824"
    "pl"
  end
  language "pt" do
    sha256 "1b8c24f523205983f7d4d80594c73b450016d19ed0bba39311e0e40643ccc033"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0663a50ec25f271afad9cf57f0aa462ceec32582ad3cd99f2715ad2fd0b4a106"
    "pt-BR"
  end
  language "ru" do
    sha256 "114e05b1537598d1151606afb5891511cae85c7e4606af67b69773dfa7976e29"
    "ru"
  end
  language "uk" do
    sha256 "735382bc35d0326bb8746dd6843b6cc8fd95d3796000084d6b3d148ab60cd8b3"
    "uk"
  end
  language "zh-TW" do
    sha256 "e8fed309e5067183d64b354e2fc61a3508e4742ec748e0b00628d17479766ccf"
    "zh-TW"
  end
  language "zh" do
    sha256 "d1689b1da382e0a18f6785f7a94d67fd82177be87f936e4676d3b92f5facf6a0"
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
