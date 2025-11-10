cask "thunderbird@daily" do
  version "146.0a1,2025-11-10-10-56-47"

  language "cs" do
    sha256 "b2ee4422b93a00e0de82cde7d590abaad801ef51f7cac5ec6397179e41f17db0"
    "cs"
  end
  language "de" do
    sha256 "c951567b6e40ecf1ab40c8504bd4a4b6ad79e83533a0c216976af58550f34cc8"
    "de"
  end
  language "en-GB" do
    sha256 "4ecc7229a95387ad6bd7c537789c87dd772af47adc5476d4f9272ca4e4dd5680"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a02549d4b81ba42e6570caed668d6941ab7f77119df25381d16f0fe3b6f841f9"
    "en-US"
  end
  language "fr" do
    sha256 "fae3e69fb878f21ef2d7cd0964c5de8bac429b623e0fcf9c765a196a86b51ba5"
    "fr"
  end
  language "gl" do
    sha256 "2e12689e58bfdb322a0275ed6e82f2c897a648dc28b439ed7fe2c445541821f3"
    "gl"
  end
  language "it" do
    sha256 "d17b94723d02c5b5dc9f684a5b1f34fddae223dcf5a00034133a29518513153d"
    "it"
  end
  language "ja" do
    sha256 "891d922ecac7bf4d79f168e566c67b2dc16ef10d691bfe33ee07325de3df2515"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7af06a706c4ffeba7fcf205e053f10975f87124a009231a2de96d68c51e92e66"
    "nl"
  end
  language "pl" do
    sha256 "45004a1fe61ca87be341ddc916c81cb4ee91df836ad0083aadfa1cbcca6788c8"
    "pl"
  end
  language "pt" do
    sha256 "4a5f8b29771669e4fd06a8a9424b1553188777556a60503002dd335c54a4a9ac"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "86f128be2b8c0f7bf8660b8356fe543d3711a07bce4418feb0379db3303fcfe5"
    "pt-BR"
  end
  language "ru" do
    sha256 "3887093c47d4ace2b4d717f043563a45e0de4c28ebdcfd566576cf3cbff572a2"
    "ru"
  end
  language "uk" do
    sha256 "33725c82b81f92eb21f547376d68bcc9ad3c1f953c6b557f096a9a7dca3d0a94"
    "uk"
  end
  language "zh-TW" do
    sha256 "9128c010514f5c1986faf58a6c8c25651749f0e900b87d66c56d8873d6917025"
    "zh-TW"
  end
  language "zh" do
    sha256 "3d1881989992db269a1a7e9a8e15b28b086d37ce6788935ac3f6f683031a4ae2"
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
