cask "firefox@nightly" do
  version "147.0a1,2025-11-22-20-56-40"

  language "ca" do
    sha256 "55224867b8f30ade016e5a4e5361f5d1922d9102cf7a8d9aaf8e25eaddb9cbe6"
    "ca"
  end
  language "cs" do
    sha256 "fec87e9f63203b076c11a67ea85601f84875a466879b708e31cdf711b0b123f1"
    "cs"
  end
  language "de" do
    sha256 "ab3c79868251febbf702bf7ef1ded77f1c3d751f0fa17a4e27d1ad9b71bd2fb8"
    "de"
  end
  language "en-CA" do
    sha256 "1dea0634fefbcb4a8088e8774ef110365a45e660d562b490a4762c4f953313df"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bd79a745ebacb31337dad92e729a2a8ea06a5b90852679d3b132506cb6e125c3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ad37ffffbafdeb8e8bd62e39dbb6f75a314ef153b8a63617b06a98a57d7edc90"
    "en-US"
  end
  language "es" do
    sha256 "c409d85fc772f1d8b3949fa6af81a2fca10ac54cf5681b00d812f14e02ca3616"
    "es-ES"
  end
  language "fr" do
    sha256 "d7c6a30ab40225bd1bd97a063609e5417f371a6962754b3b850715509f087191"
    "fr"
  end
  language "it" do
    sha256 "fe5c18a744442d66d9780f95522c6b13102cc29876551b6a70e66795b8a9692f"
    "it"
  end
  language "ja" do
    sha256 "949a932bdd3cab2daeb22e3237bbf5f79bb91e343f81e68a0229edd0ee1aaad8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6ea49c53e42156ca892054cf1b8f8741630b48373d107746da378cd83434fd8c"
    "ko"
  end
  language "nl" do
    sha256 "3be502bd0b06d5607461fe26a448fb6a1c2f09daf847b16abaef424742457a04"
    "nl"
  end
  language "pt-BR" do
    sha256 "9c6d9526b78ccb3f0efef26efa827cc3ccdc62e2ea1bad6b28ff5acee65d5e24"
    "pt-BR"
  end
  language "ru" do
    sha256 "0988b5ca7e7fcd989d9374620a012b65600849dcd571817d8b2ad9e284526bcf"
    "ru"
  end
  language "uk" do
    sha256 "86c115aa4521530910f6fa59c72a59099c0eec94332cc24b516cd03c3915e164"
    "uk"
  end
  language "zh-TW" do
    sha256 "d60ea3d91ae469be59a049c0da5153693f1d5779b3b2dab944b62fd69e4df19d"
    "zh-TW"
  end
  language "zh" do
    sha256 "3a3d82638a285f8c231fa125b24078a5733615b6b04e104ddf85c18a3a6fc9c8"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
