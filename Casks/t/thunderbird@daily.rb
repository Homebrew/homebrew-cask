cask "thunderbird@daily" do
  version "163.0a1,2026-11-21-10-52-30"

  language "cs" do
    sha256 "a90695ec587c04be45f4f0973ba230c80c92b105e25d43ed184b91c119319f91"
    "cs"
  end
  language "de" do
    sha256 "54aff8bc19407e965a40bd8725a7172bfbdf45d756c687538dc7a98bdc5053d2"
    "de"
  end
  language "en-GB" do
    sha256 "205e094adfc8b9349a62df583ea3179e80e81fb17717442225e1e891f3770cc2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6dc090967d65c15996c427901f279a80cffa09ab1d114c1b6726e630686c8b4f"
    "en-US"
  end
  language "fr" do
    sha256 "93fbe3e200425b0ed06c6d173637a0d3d7a31c40e4417e746f8e0ff373e39291"
    "fr"
  end
  language "gl" do
    sha256 "f99d17f877001d1c0ae578b0f026f18458469894f06029efa0c1345c539b2965"
    "gl"
  end
  language "it" do
    sha256 "ddceedc60fc272b6a1e959fc43bdefdd5584b4ccba33130d0eb67cab21b8ac33"
    "it"
  end
  language "ja" do
    sha256 "171459ec0d0cf168f99ea71a6c047bad2a591e772332154376546512f2164d60"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "476d4ad8158d76cbf831357e3a99f3527b6139be2e68151b1329814cacf1a1c7"
    "nl"
  end
  language "pl" do
    sha256 "e18e3f9a5a42b2984903c11748ea8ecac628f63a8204980a1b8e211a8c6a758b"
    "pl"
  end
  language "pt" do
    sha256 "e6b97cb4968b3688f29c7c9888c383469c2fae0bc9ae309dc430cfe493e7285e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "355572b40b0b3e0870f4d409ff7d48585968b30347825f85287540edc39c0a99"
    "pt-BR"
  end
  language "ru" do
    sha256 "f525b54854e7a86b94b3ae3d5cdbc3db9227ea84db99a4ab6df2af458f67b41c"
    "ru"
  end
  language "uk" do
    sha256 "e0564d4b6990fccc023167f67fcecda8e1a781cae42278457fa8eafd660c3b4e"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e79da4f5fa74bbf43afe1c5cdf6a00a0620a123d1589b65b358582f4f206d43"
    "zh-TW"
  end
  language "zh" do
    sha256 "0880a3d69bf3ba9e46e48951b4fd9ef3b8088b3bf491f123be4588cb504b9f79"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
