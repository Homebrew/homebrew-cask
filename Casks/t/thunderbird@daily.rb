cask "thunderbird@daily" do
  version "154.0a1,2026-07-18-10-16-17"

  language "cs" do
    sha256 "2bef887e73b965778f88d5630294cd7e7846c90fb94bc43f0884c2d95e3f8f30"
    "cs"
  end
  language "de" do
    sha256 "193e2f157efd2d08f357ce3ceee5f0acf08147692546a51ad99a261d81e56adb"
    "de"
  end
  language "en-GB" do
    sha256 "b5f2b91d0421ce37139d1d31164ed7a647b16a0913ec2534d9cb429f98e0ff96"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2b86bec9aa72ec3f4aa48d6d00003991d91666cb7ba602971d4e913fd3802b9e"
    "en-US"
  end
  language "fr" do
    sha256 "ef4ebf8414a21c07ed24f1b1efeff31c62a393e4cbcf0c3705a8af8a45727927"
    "fr"
  end
  language "gl" do
    sha256 "3f3b595bfbdfbe050f46d3cc3aeb4d8d61cee57f197a6b00e4cbfc97eb9d4412"
    "gl"
  end
  language "it" do
    sha256 "e91b6adb8bdcab2a5f8bbd745d4912f568bfade564b92474ab8d765bcee9b4d9"
    "it"
  end
  language "ja" do
    sha256 "435a1daf7fc2f53883148fa215508b76274c3ae16d3a0cd0aa938a3127055576"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8b7f30e4667e8a5ae88350c328ea44635311cd1ce97c2e662e34ff545d87c471"
    "nl"
  end
  language "pl" do
    sha256 "9aaf23499b8bfddb38d067a0e1a2e86454521792ed9f4639c3cb9d13ba4c39b8"
    "pl"
  end
  language "pt" do
    sha256 "708d13e7abe09fb1feb6757fa7ecdccba0421b247996b029508e92923d054ede"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7c6e0b98ef36e97edb901883a99bd7074e3a8987b8685d43dd5aee347911a4cb"
    "pt-BR"
  end
  language "ru" do
    sha256 "c45618e6ebc9c50bdf1d3bc57f7eb02b8af6b9656bff76a9e851223085e01e1f"
    "ru"
  end
  language "uk" do
    sha256 "1a7c53d9548a91235e2fc6ea6581ae64a051399b685753719854fa5c0e6bdf5f"
    "uk"
  end
  language "zh-TW" do
    sha256 "79d0488c70f229227eb69db4c7aff9c6ac9459234c1dd011c6a9f1e1bce4f986"
    "zh-TW"
  end
  language "zh" do
    sha256 "27b389d40da4f00b2219b5c964bbef700a24481906065ca447830b1d4e930ff0"
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
