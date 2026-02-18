cask "thunderbird@daily" do
  version "149.0a1,2026-02-18-05-55-51"

  language "cs" do
    sha256 "7b2df55edd8016e9a131eaca94fc83eff3f6c51427d2ee697e05dc4fce65661f"
    "cs"
  end
  language "de" do
    sha256 "6af2842ca5567145879200be962f8492e89a41f56dd5ba6bd06e4c7f2a36caf8"
    "de"
  end
  language "en-GB" do
    sha256 "90f3364f4e8d3525d5e1d229953d4e4e123a1006297a03206f02d1721cfaa07e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "773791811c474afce194cbae82f0a61acd64098f0f9e97c83452c8ca862e4aeb"
    "en-US"
  end
  language "fr" do
    sha256 "c22f0c116d904e2a63ca3c0c3259e034661f52141a0f8a41d479e0ab93fa4e69"
    "fr"
  end
  language "gl" do
    sha256 "b38519685a9c59b58f42d53f6def985b7b7f6f8e732fa8cc8a179057a16b6aa2"
    "gl"
  end
  language "it" do
    sha256 "29e78215c09a35d0b9d8b0ef769e47b943f0c080df42fadfd53b098460a5c01d"
    "it"
  end
  language "ja" do
    sha256 "1f72fb6898a417b5b0ca4680b5f22d0e00085f0fe4323f442937e3861a60cd6a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e43c33de1d00288eb3d11a2f959a71358f89cb50871799a0ed7c69e13f7e535a"
    "nl"
  end
  language "pl" do
    sha256 "912248d2db4d27cb1ca52f60db12cb8ae2ce457f05063320dc229684bf851297"
    "pl"
  end
  language "pt" do
    sha256 "0e513339f808348e51fb80e50bf790397ac3f3960e17f5e1bf0bd0e8c0fd0414"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c01466f170261568e3c3c173af03c0d21506803d1b95281f26223d1f389d325c"
    "pt-BR"
  end
  language "ru" do
    sha256 "696cf3776be8b20b96fc4b89a1a2d1df884a52425667a94b0383ca6dcd436a66"
    "ru"
  end
  language "uk" do
    sha256 "e23f9059bde02f347db35128b71f5d436d9ad2117abb7e163ae4a5027aa5f56f"
    "uk"
  end
  language "zh-TW" do
    sha256 "b23d10a282ea87ea4fee5ebe3e36b64a17ecf836de826c4ace459442082b3972"
    "zh-TW"
  end
  language "zh" do
    sha256 "9a4582bc66f1d20668119ba6a02b56a336836a1cd5dba4c16d5d41e8851a403e"
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
