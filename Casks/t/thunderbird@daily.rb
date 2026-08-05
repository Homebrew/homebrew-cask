cask "thunderbird@daily" do
  version "155.0a1,2026-08-05-10-02-43"

  language "cs" do
    sha256 "dbd327755a5719fe37b295de006faf821bed7175ddda160299457aca88e6e426"
    "cs"
  end
  language "de" do
    sha256 "8f6b71974cb9d588c09b9c5b0427a8b37aafbdd791fa122b1a0d6b13c3e750ac"
    "de"
  end
  language "en-GB" do
    sha256 "0e83d5d6ab078157609af61765b0449c17389fa9f32eeb081c449b9dba324d3c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7171278052c21b39435f0ad5cb4130de5b85569dd1f9d718f0971675a20c72ee"
    "en-US"
  end
  language "fr" do
    sha256 "78c203183f93012632e1c4d1e1a4b5292ed3520f68c572b2be39a2c2c5a830e3"
    "fr"
  end
  language "gl" do
    sha256 "d8779c0a566a01c7800c95342d50c5ef629d52d217ca1eafa8acbfb9775d9b92"
    "gl"
  end
  language "it" do
    sha256 "096c88c907501305f0fd733c3deeb388016c6e1578f55683415da7321e24ea6a"
    "it"
  end
  language "ja" do
    sha256 "d9fa041cd5d653cd10cc27769d22a829eb480ca27ad15f0fba25ec95f70ae550"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e6e44dc8e732f040d8bc1efcbf75a8ac7ee09e106dfa94cd517f980cba6c53d2"
    "nl"
  end
  language "pl" do
    sha256 "01e9b846d3561becba6c23504a3bbb0b94a47bf0da96e00ff26de540a8187edf"
    "pl"
  end
  language "pt" do
    sha256 "4e31c256995441002028eb30bc9a6317a33dac04e665a9516d4e14ddb4f978b8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bd18d10e932f032c0c58fb812c22f9aecb7e4e327e25a112c29b79b8c5388061"
    "pt-BR"
  end
  language "ru" do
    sha256 "acfeaf35026d70fe07c2f8da147becdc135df46073c4c3a6c8fa81176ded612d"
    "ru"
  end
  language "uk" do
    sha256 "8e4527ce94a95252c2f7bcea55166906b2f79c7fe55933344499678b21f93124"
    "uk"
  end
  language "zh-TW" do
    sha256 "699802fad98b07becf9a8a8783331d019012a0094221fded19b08a3dad6c92f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f639067218b119ec5b27978bd87c04c315e5c9004b5276c36a33b06793859ec"
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
  depends_on :macos

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
