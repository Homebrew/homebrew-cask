cask "thunderbird@daily" do
  version "155.0a1,2026-07-26-10-23-06"

  language "cs" do
    sha256 "c60e1acb99bbec325dff5eadae9f7585cbf081b5237a16b2b6ec234c8e4bcf16"
    "cs"
  end
  language "de" do
    sha256 "8bda9937969449ca753ea2c474035c1a35e9fb0e5dca1fd08affdfd93bcd8df5"
    "de"
  end
  language "en-GB" do
    sha256 "07efa3c9a68a38c5efcb2f6d005852afd3d455965cfe708d868ce6e288ba4bcd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3644809f402404110e92f23b60cd5358bcec967123b0a3e498fa45a01546cc34"
    "en-US"
  end
  language "fr" do
    sha256 "e062e7e307141551eacce05d34a28f477c88f687427cb900e0cafaaa500e3f9d"
    "fr"
  end
  language "gl" do
    sha256 "b03d95fbe2385872f475355edf0a93d84b0524bcf96de3c3696c0cc2c9b7f01f"
    "gl"
  end
  language "it" do
    sha256 "e38329555e9d5a912c7f6e9f71e41df087357f106824840c340a989fd88f6dc7"
    "it"
  end
  language "ja" do
    sha256 "63ad4fc25ef65592a23a88b3344fc3bdb4a2b94b05e287f1f1c8ed58ab1976b4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c567cf2e266a7a2cff4725822f53f9ff23d5736026383a9ea393d7810859a289"
    "nl"
  end
  language "pl" do
    sha256 "683954400982cfeb4c6bf0c691a9c25aee3451a71522cf1bf2490f589a167088"
    "pl"
  end
  language "pt" do
    sha256 "84a5aa865d5ac400b08ca42d512c158706e7624917d57a2aa5c8862b33f3278f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f40e1cd2def8d2f31b9c228a746fcde5b9f3dc108abaf99f7af56e045a144751"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ac12be42f8c4de8fbc83005d45e7115cb6c223ddd8c3b1bd32f8d96ab4abe89"
    "ru"
  end
  language "uk" do
    sha256 "d869771f0655f747a7b40fd5813c32a653a304764b502476b1e722c0bccac5ba"
    "uk"
  end
  language "zh-TW" do
    sha256 "cbf7d716cf318a49f5a85f7b92f0b1ac9c4c897c709a5ea3f56f78d0eaabc225"
    "zh-TW"
  end
  language "zh" do
    sha256 "cf21e785c1e6e3c01c22d0fa1053633d471307661e5c1a2cc0399917b145811d"
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
