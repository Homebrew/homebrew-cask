cask "thunderbird@daily" do
  version "148.0a1,2025-12-19-10-16-28"

  language "cs" do
    sha256 "18e2dc3e6b45449b3694ac6e3069fd669cbc52fa1c518dcc486ae52d8c85bb59"
    "cs"
  end
  language "de" do
    sha256 "0ae59956001466b5e7975a89e4a520e624c957cb2ba6fea60d0a72d588beb84e"
    "de"
  end
  language "en-GB" do
    sha256 "c7544ad003da5d6636ba0b11d5fa2cbcc69c27d183cffaf2f85600284003bc54"
    "en-GB"
  end
  language "en", default: true do
    sha256 "645129075f697d983247ca905052fdddd6f8e848767ce79ac23542c77218b21a"
    "en-US"
  end
  language "fr" do
    sha256 "d19dd5d223901feb73cb1929557a775c5eb9fcb97fefcc3f5ce4ffb73acfdfc5"
    "fr"
  end
  language "gl" do
    sha256 "8d24240ab412e71919d3c6c33befe32d49299f6b1dc3f0959662da90368ed44c"
    "gl"
  end
  language "it" do
    sha256 "8bd8aa4d2302f2be5dc859224457e52c19ee7ca093c32a4c0782b3fd6a236db2"
    "it"
  end
  language "ja" do
    sha256 "bc0ced5ef8052a3e293628da5f1e006c7764e878104ec4e216d649f463f02166"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9ba508a67e096f357689176b54e1649a479c578362761ff0dc0c3d5d0987eda9"
    "nl"
  end
  language "pl" do
    sha256 "ff35551d8e51216ea7e9902faa8a49d2f470adcc3032fca90689063ab2e84318"
    "pl"
  end
  language "pt" do
    sha256 "5b05312fe1493d4b514005e710229d2da5d00fc3b6f7dee105f5a7b9350b8489"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e2c7e46f0a63fb6e4c08ed33d7994d5a1026ff8a1f7e9a52f2aa3964eb6a2504"
    "pt-BR"
  end
  language "ru" do
    sha256 "f32c014cf1b426138cb5c23c6b99414e8222ecab9220569bf1c22064052b37d7"
    "ru"
  end
  language "uk" do
    sha256 "fb352b9518210ddebe581e6f8dbf90a13b22b9e6645eb823e9c2b7474564d62d"
    "uk"
  end
  language "zh-TW" do
    sha256 "d2e07aaeeae071250cb1cde3391432ba1005d328737e0e6023cfc9835646a7f1"
    "zh-TW"
  end
  language "zh" do
    sha256 "50bf2dbdebfe593dd2f29c7764ae05ab30c91f7d1bb4d6c1193c9c9570d9e2ab"
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
