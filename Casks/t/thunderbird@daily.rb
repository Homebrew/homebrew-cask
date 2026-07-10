cask "thunderbird@daily" do
  version "154.0a1,2026-07-10-09-26-45"

  language "cs" do
    sha256 "43732f783966387807f5f3c6d4f3e81639618ea456529cb3e4f91dd1dd9a2339"
    "cs"
  end
  language "de" do
    sha256 "4f8dca36eaea84d78164a3c35c6ddf0947adf35e3dc8de9c9ca8b5a572b8a378"
    "de"
  end
  language "en-GB" do
    sha256 "ce73b76fd474cc673324202daf657c0db6d729ec07954aa4a9d57088094aa2d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b1b9e2cfc31e634c353b24d7d58be9f1928824f3870a1684659d985e41bde4c3"
    "en-US"
  end
  language "fr" do
    sha256 "3945ee5aea82a19db793a9aca119cca6cfcda92478b90cbe10b322416fdaf55a"
    "fr"
  end
  language "gl" do
    sha256 "614d8667a4de474ba85dce7ad86f21108a098d6252123a4bf4128e7619e10f77"
    "gl"
  end
  language "it" do
    sha256 "84e736c0c52610631be904810da2449393dc4688210cbc9b9e741412d67d2912"
    "it"
  end
  language "ja" do
    sha256 "228c5285bba02d76ea54caacbd1770d5a8f000a4f9d9a01d504105824fdaf69d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0481bb8c70d38f9081f62f2946e6089858fbf9be5e4c0deaf971d7232bcab51c"
    "nl"
  end
  language "pl" do
    sha256 "486067fb319edce0b591440141015f0e5e6dbefa2745397595c887aa1778c1fe"
    "pl"
  end
  language "pt" do
    sha256 "99efcbeb4faf3c4aff3b9a39d40ae87db60549191ce8faa9da6091e7f82955d2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "066282affc0d90f6091015d445d8e40c41ba623e9a52ef245dad5caba2d2f202"
    "pt-BR"
  end
  language "ru" do
    sha256 "f13d9b2e2570418bf4880a9f87c263c34abde4ada78824eef678560f41cb47c1"
    "ru"
  end
  language "uk" do
    sha256 "6186c5988d9e70176a59399450e2a20e2012f4c7828094b5bb1f95cf0e01e512"
    "uk"
  end
  language "zh-TW" do
    sha256 "2bdf7036e30a6640373cc0b6740bcff5add69ee6f5ee1332dd5a4e2f5e41db59"
    "zh-TW"
  end
  language "zh" do
    sha256 "7e59cd984fd4df0255f8458fbcfc22b5f8c2ecad47115f4fd5a3035fa5711adf"
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
