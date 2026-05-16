cask "thunderbird@daily" do
  version "152.0a1,2026-05-16-09-43-02"

  language "cs" do
    sha256 "1c5fe192faa24427a71a69871fc9ab50bff3f689e1b2142e51a4ea426f0f1f6b"
    "cs"
  end
  language "de" do
    sha256 "b154ad869a418433fca5328a9b0bfb28f64a35ca51ea80eae5cafbbfb53b20db"
    "de"
  end
  language "en-GB" do
    sha256 "9b83be256dd61e7ebf49f0e6e427385e5f47e61b5fb058b0a20c47180bde8cc1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "33191078a882288159253801f4a1a34007dfd1b8e7f8718dd8b31e1b436b7dc9"
    "en-US"
  end
  language "fr" do
    sha256 "df01e8bd24e5b8478e6e2064d547eb05c5a9e2a6bb63137a5b91e0fb0ce9adcf"
    "fr"
  end
  language "gl" do
    sha256 "72e813f71b40cc2950f367bc7be5afc2c51427aae3ba80e1936f81cc04a6eac1"
    "gl"
  end
  language "it" do
    sha256 "47f162d1b99560964949f55db0c62b5af1fe3083897f19b26487dcb1013cbdbe"
    "it"
  end
  language "ja" do
    sha256 "687892cf2edf6868f174498aa1d27762f6f6daa29f899812cf153d4f10cfe75c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "138ec7adb3c997a52e34e1895e26f65fddd7db544bca921bd2742aef07c27799"
    "nl"
  end
  language "pl" do
    sha256 "37f91e59646f1be2c1211bc816d456a4db0a0bf10fe58c47f56a92bd611ebe28"
    "pl"
  end
  language "pt" do
    sha256 "7188ea3ebe4e5030f73ce1b9d377f1909e1904c1ad350c326f405224922ba43f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f133abec217b8fd0169522b47360df7efb06f3f16ef62a2ef19fb95413f3335e"
    "pt-BR"
  end
  language "ru" do
    sha256 "93cf62dcb2e73deecab6b86906365e5e8db8e55d8e1be0ee285920c36b0366d1"
    "ru"
  end
  language "uk" do
    sha256 "289c0173c30e87191447537329e50ac58efb54a6fb85714fffb4daa09507b56a"
    "uk"
  end
  language "zh-TW" do
    sha256 "e56970eeb97eda3a1dc71799ceb0e6f4cdac1d1473a51728f20255733e2fd2e6"
    "zh-TW"
  end
  language "zh" do
    sha256 "c3d5e5070d3f89ae9e3ade370e19adef7d36345aad600d6edbb09ddd5dc487a2"
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
