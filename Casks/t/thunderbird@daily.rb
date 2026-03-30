cask "thunderbird@daily" do
  version "151.0a1,2026-03-30-10-30-49"

  language "cs" do
    sha256 "369b68c98591ef85a6aacf0a652844062784305e66364e526123679b2e3b6862"
    "cs"
  end
  language "de" do
    sha256 "75239f5502c32ecc8302bb202ec56572a99761a8f8ddffa8f6f3c3647c8c235c"
    "de"
  end
  language "en-GB" do
    sha256 "0aaba50e58eddec930c5af68dbbea208d12f77924b1fb2fdd9028c3d4e51a144"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fc1512f7eb47ff95a45d5a34b0af40b7b28ac1d9b0d4db6fbc031198d3e2d9bc"
    "en-US"
  end
  language "fr" do
    sha256 "22e0135e2b165ab6b1febafce6e1b374d559eb5c2dca5cb2f2f450aa9f9bdc3e"
    "fr"
  end
  language "gl" do
    sha256 "9af5cb5c628a1f1a1e8c53d4d4e1468fd1fdb4693c154610023b7c87d8afffa1"
    "gl"
  end
  language "it" do
    sha256 "b95388129a8d9f19aaeb8244d8959f7ebce54f0088036a9066f955c755984608"
    "it"
  end
  language "ja" do
    sha256 "05609259fd3932c11150ff90acc431f364aa30d697f869f32eeef9a53e050308"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2f2974871de800fc7f253d457aef611aef9b6a7115222f752258ed9e9d654eb0"
    "nl"
  end
  language "pl" do
    sha256 "1bbb257a4b84eba01765747e48409c93927774a73755d3c507baedbafebe8502"
    "pl"
  end
  language "pt" do
    sha256 "d2a9dfe88cc1c51e6996c501f24a5c69e3a659152276835cea08ac9a75b5d114"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "cbc7b1607bda533112785bea8b532ab0b383ec9641576ce98f39cb976ef67c81"
    "pt-BR"
  end
  language "ru" do
    sha256 "bf4d4c00cf758db6b843e7fe346cd32875b98e4e91700ca5e3177f23ecf2d76f"
    "ru"
  end
  language "uk" do
    sha256 "5e3b188dc1d31d239fa3642247729e7545a3cf56c9c2ad9c0f87a456e0b900bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "ac4199d5f8c20c735d81368422bf202a184af61066aa8632f3b961e75968565d"
    "zh-TW"
  end
  language "zh" do
    sha256 "6b9cbbdba54a372f568dccfa8ee9b7df8bf1305c59bddd37b41864da0a137da9"
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
