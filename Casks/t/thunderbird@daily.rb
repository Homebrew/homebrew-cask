cask "thunderbird@daily" do
  version "151.0a1,2026-04-09-21-29-57"

  language "cs" do
    sha256 "d3405e2da1af39b4f2d6036841ac8065983e8eafacf225ab0fedcff4aca07102"
    "cs"
  end
  language "de" do
    sha256 "7bd3dcc9ee6f39cecc2e7088937d8c663cb7d1422df9d17c79a3b4337fa7ffce"
    "de"
  end
  language "en-GB" do
    sha256 "6f0078fa9e9a20e698d5f2001f39259d4d86037ac6f654c738cfbba2eb80a32f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ebd17e1de1a542013dc3ea00566ea63c962923eb6fc0ecea3d2c797882e5e03d"
    "en-US"
  end
  language "fr" do
    sha256 "b95ec796a24d7cf03b14f8c9243f3811fa39b36342f68fca91f9a976b1a7d7a7"
    "fr"
  end
  language "gl" do
    sha256 "dc736e6d227ce1248be6c0473799306b8b485ef672e75a42952a3c48b5d3bc75"
    "gl"
  end
  language "it" do
    sha256 "1137a32fbdb51f1ef613f4536c7191410156cef77682b6df2109074b400393d6"
    "it"
  end
  language "ja" do
    sha256 "315a719232bcb6788bddf20f3df1561a757770d8d0c1cd2c1fea4647cd59e655"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6acccf41bb2ce2738bee2b644cffbae60e2102beb26093678bba8c5497ea562f"
    "nl"
  end
  language "pl" do
    sha256 "481c11c2d220ed8b4be86194b7b34fef49599e1ecc87ae5eeab05d94c0825565"
    "pl"
  end
  language "pt" do
    sha256 "3c459eced49ba3693d767cb81981dff01d775ecd47da6bc7271ae22da466c774"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "40db6900c101ce35ea2db87fe26bff955dcd1d84ff93974e9a7e874593fa5af3"
    "pt-BR"
  end
  language "ru" do
    sha256 "c68195ce3313ffc438d9a9b46bfaed45e942615b4e3cbce8193f1bf9031683da"
    "ru"
  end
  language "uk" do
    sha256 "6d1896697f09fc1a066b6b62c9c9c1e179ca26ccba86470eaf34c7f3c1347717"
    "uk"
  end
  language "zh-TW" do
    sha256 "952aad847be4e9ed6062c8a5214edb090918e293615feca1ebced0c19c3ec0c0"
    "zh-TW"
  end
  language "zh" do
    sha256 "f31ee547fb5860451235338b6d1eb641f6adeb25a377d9395277f5008e70c934"
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
