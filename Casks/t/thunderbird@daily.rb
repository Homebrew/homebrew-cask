cask "thunderbird@daily" do
  version "144.0a1,2025-09-12-10-00-33"

  language "cs" do
    sha256 "28aae74502b31221e2bd5b69d6d9b3aab6c3183a4599ab539cb084b4a32ebe95"
    "cs"
  end
  language "de" do
    sha256 "a6203c0fb0b43d2d80325c00494e4434693b6e7dbc4c171ceb17c34a9be7dd69"
    "de"
  end
  language "en-GB" do
    sha256 "4653093f96d545d01bbde03ad29f716516dfde6276824745d12fa9ac1aac25aa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "39f29f2f1aed1b661c07cad33b03249929480b7bb50d815ab0fad56388ce755c"
    "en-US"
  end
  language "fr" do
    sha256 "5aea2039d91b44ccf66983dd8385178284a7cd2740e124bba9d785658a273a27"
    "fr"
  end
  language "gl" do
    sha256 "3f086d65b2c87b51c8bdb1d9307f012fff522f9fa1b9a9827e684e724bdb8542"
    "gl"
  end
  language "it" do
    sha256 "eff76b5574bb3b74c3e7ae5c06d9fe3aa266b01b72cba4bb7dd361c727833faf"
    "it"
  end
  language "ja" do
    sha256 "9ba6cbd6c8edd70708f391298fdeb550ddee92dfb388b2c23db3f44f2bd9700b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "511ad9f171358a0fca1f8845c71d2e6998e01e3f4be801014c500a4c5fa15750"
    "nl"
  end
  language "pl" do
    sha256 "c3105f2f438e5ed0a7396d9075ea6bea0372234ed80a5e480d025bfaa05a1d8a"
    "pl"
  end
  language "pt" do
    sha256 "a792f7a9b85a5f0c6a96965c3081a0df0d6577103e06089343ee9a31b3901562"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4df83ce6dc5c1757b17d7199408320afa743819cf7bfd678565b0a1999f2f5bb"
    "pt-BR"
  end
  language "ru" do
    sha256 "c387d75b3dc2768f190658f99eb7b1cfc2e6a2d5a505fd8504e180afa9c4b5d7"
    "ru"
  end
  language "uk" do
    sha256 "834f0db06a1b15b41609670e7e31d554d29ce6ac73846e50af491959de0b00da"
    "uk"
  end
  language "zh-TW" do
    sha256 "7a76a19eec2221bb3f5221ac857e2921d45a1a77d259d04eb08dda8f810a2254"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c3cc7ac5ca1f208226e8609236def82d7dc5051e62ffe047d73fd587f119df4"
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
