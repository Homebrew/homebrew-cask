cask "thunderbird@daily" do
  version "154.0a1,2026-07-16-10-08-20"

  language "cs" do
    sha256 "40f3af63f9f8c5b5052ad1a0780acf414c6645110df4cbd751296c8c71d52f15"
    "cs"
  end
  language "de" do
    sha256 "4dfdedcdec7a2eec30d59c87988ab6527a436b3dbc8ccbb1b57e5931034fa5e7"
    "de"
  end
  language "en-GB" do
    sha256 "e0756a8d7c52c97eb84cbfcf19d85671aa4bd1201c27d95eee7c2b61a3f4a3cb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fdb15c9b6396766aa2787e0dc5280f11495b32d669b60b2dd07abfcd369f84a2"
    "en-US"
  end
  language "fr" do
    sha256 "45492deb489350b233cf16133cbb13260d64acfc8ccd6e7a53cf6239803d340b"
    "fr"
  end
  language "gl" do
    sha256 "6763625db8a1147aa9619855859044a7af3e4417b3f1f9aa842619e663e9d2ab"
    "gl"
  end
  language "it" do
    sha256 "2d4bb8d759d1a929dd2cdc987a36f4ea7a7ff30692590c348f365a24e3f5150f"
    "it"
  end
  language "ja" do
    sha256 "8beab1a5f6dd0f276e88fc2d7ed75a802be1cf1b60be2fcab0b48fe3e3910867"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eb835339bf4428e5878ec262a793c114e3bef5326fabf5084dc4ec09a8120bd1"
    "nl"
  end
  language "pl" do
    sha256 "792f1edb0d15c8c3e76c78cb142f38b968b7453ac63716879ff80e13d29f04d1"
    "pl"
  end
  language "pt" do
    sha256 "7b9ab32f2e3b795f660a6c9c629f199c565e973c79de44beec393d8adcc99690"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e263b22612c2bb71312038d43a14ab5986ca9677488c5e73aacdcc67656ef91c"
    "pt-BR"
  end
  language "ru" do
    sha256 "3b55a3a18d60ef6cc89c6b605a28b35e41261422e8a726ec6a53f5f47715d2fb"
    "ru"
  end
  language "uk" do
    sha256 "a9c5e6e5934d1fd7c5cdfa7db1e9d46be85d2e55134175bb975d700248a61039"
    "uk"
  end
  language "zh-TW" do
    sha256 "d21a4472bc4ac74f6ae1d7e19cbed70cee37d0239864c8bc76b4ad3bbd4ecb91"
    "zh-TW"
  end
  language "zh" do
    sha256 "2d14b4f6e5ef4a7203d001da588ca23f68026dbcc08f9a21451f3b3730d94867"
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
