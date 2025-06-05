cask "thunderbird@daily" do
  version "141.0a1,2025-06-05-06-52-55"

  language "cs" do
    sha256 "76dfebcf0a13b6f72b585abeb692728aef3059f8a927c6edbb27bf6aba897657"
    "cs"
  end
  language "de" do
    sha256 "ecba62b54cfebcdc55faf7795d6c96abed685c4f6a80539d239f7feff4fe2aa3"
    "de"
  end
  language "en-GB" do
    sha256 "18e5ac13efa741a16e031308c13f26749f805a1d772cf801475caf98bd059deb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "461f5ec8a46bf0570540177f725a00726e153320daf239d4cce31546d61b4480"
    "en-US"
  end
  language "fr" do
    sha256 "b4e8350fe597d7190f4b3a65e163923b0a24942e0cee8e4448d1290c24525e74"
    "fr"
  end
  language "gl" do
    sha256 "5553a12eb731eaa12bafa29b43fd170e9e0b7694dbac245aa8cbd52581e5e7a6"
    "gl"
  end
  language "it" do
    sha256 "abbff4ee9d937a971f3f475d02f06f48bc99c56dfd379984b0cf6ff592503291"
    "it"
  end
  language "ja" do
    sha256 "9bc476d700ddb1a5a58d2e8e5025e7923015519b8d1294bdafdf3a5c9acacc59"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e8cd75f55dce5ac8808ce8e3238b60475cfa1c0f0d88370dc2235ff621337b66"
    "nl"
  end
  language "pl" do
    sha256 "ca83f8c165f77cb6aca2ba46eb36e7576368626ea541f883c5ef7cf7cae50151"
    "pl"
  end
  language "pt" do
    sha256 "99a2e917abb716afd662fa0e03f0296dd3c1ed6a75a5d4c62dc5040750516e1a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "94db69c77e0a2fed859591dea335059ebae8d7672a7c95ba9ae5bc029ed61b83"
    "pt-BR"
  end
  language "ru" do
    sha256 "83c826bfbfd471ab9b0851cfd5c243964242d139ead3a331197d52bb07f8432b"
    "ru"
  end
  language "uk" do
    sha256 "dab102f37b463f76677bba3e0fff47d9f7d2541d7042edb2b005592c87e3ebfb"
    "uk"
  end
  language "zh-TW" do
    sha256 "702713ed63c08c76e0ec93bbff362d32f8cd4260291f02043430411de103cb56"
    "zh-TW"
  end
  language "zh" do
    sha256 "bf974986d0362f7bcb7afc68282e869fbe73ccae75c25f4372a302654c703bc1"
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
