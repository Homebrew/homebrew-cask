cask "thunderbird@daily" do
  version "144.0a1,2025-08-26-10-52-08"

  language "cs" do
    sha256 "edb9a576a46786aa36e29bfd44f04c88975f9f38be866efbf07f432d9ac29cb5"
    "cs"
  end
  language "de" do
    sha256 "894e2155f6758402163683d033f5018e7673d76b01a56a3e6482a3ad7256b724"
    "de"
  end
  language "en-GB" do
    sha256 "44024e9b8958407d9267999118ca8eedc587f0d38e526e9da4d1309eb5702f20"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72c2abe25bdf37165f931caf37b4d4e29b9d35af97f426f0a534badf7782d5c7"
    "en-US"
  end
  language "fr" do
    sha256 "22448f52bff9d9a3b207d4f8cf0eeaa1c3cec296515b4166d0ff1eb439959bd0"
    "fr"
  end
  language "gl" do
    sha256 "8b3919f8706445255cde82fe34ffada391343f07d5b8568297382356d687ffc7"
    "gl"
  end
  language "it" do
    sha256 "e76d8a8bd89390f03eb267c025239c312f3bff9c76be69e0c08d1fb2493c8c0c"
    "it"
  end
  language "ja" do
    sha256 "c4898e52751ed2c0496c990ad1cebe9dcf14a339a69c6db9c405f66a6cdeb1b5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "724fae70dee076aba194866d9841a0970e3d3b4335fa5596a804a3a784572992"
    "nl"
  end
  language "pl" do
    sha256 "81515b5aae7c556aa585ae01176189424a1461ec56d13061b0bb96ca8d8cbb8b"
    "pl"
  end
  language "pt" do
    sha256 "426832e1fcc499b0d6bf55cf9ae22ace435445510d1ae5f7b44168898ecd9f4e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "677419411ad4fe8a2efaf028657ce873a0aeae2c8fa5bb695fb0b4084fac0eac"
    "pt-BR"
  end
  language "ru" do
    sha256 "c78cfad422f457c2ce137b732ac02f80f17290b52503454fb4d5bb7d1585b9ee"
    "ru"
  end
  language "uk" do
    sha256 "bec570ae0bda6b501777fb639d6171096e7d6c23d3098e00fe3b31f8aeaca2a0"
    "uk"
  end
  language "zh-TW" do
    sha256 "22fc075f3443663f24b03ed61f940abd050c0f4dddacbf93e3e3110b5ceca419"
    "zh-TW"
  end
  language "zh" do
    sha256 "a708a6c3c73211378084a88da82a1856a15a50d76954e6c7136e2c802d6964cd"
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
