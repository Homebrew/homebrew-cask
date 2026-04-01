cask "firefox@nightly" do
  version "151.0a1,2026-03-31-21-08-27"

  language "ca" do
    sha256 "ea6fab6b06e057d2ae1747bf29e44b2bda4296b997a134d1c6db1ca0868d4478"
    "ca"
  end
  language "cs" do
    sha256 "eacf10cebe24a51531283d9b13b53f3b3bb7d468632d8becf49a66caad471ed2"
    "cs"
  end
  language "de" do
    sha256 "c545b7128c46176bfd4091aab7e28dec3f735c92b7babe4b3a8c47ae0a649317"
    "de"
  end
  language "en-CA" do
    sha256 "355d6fcca97a17c9c3d8bb8a9f8b2d6a0893aa92fa277ac507cd4ba7d678da66"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1ec1a7773353ed0a434371e15560e9565ed8e624e4c1be15ff920323b5381a28"
    "en-GB"
  end
  language "en", default: true do
    sha256 "752166a0afdc1d54fae6c7eed8b8c3cc74088bb1333173c0d9fa6ef6c595d2ce"
    "en-US"
  end
  language "es" do
    sha256 "7e238304032f5255f201a890bdefc4f66550fca7b4d537d027a77ddfed03edf3"
    "es-ES"
  end
  language "fr" do
    sha256 "3b08aac651980a46ec158c2d98de5e879486dfc4228041a5ee267a71d13047bf"
    "fr"
  end
  language "it" do
    sha256 "5bb9a2d31c70ea733caa5a1bb219a45edf99b4b20d0cd78b8e18c0f278dfd007"
    "it"
  end
  language "ja" do
    sha256 "c425792894c9f05d20c83b8ede7ed951906f8b1b16d8708f3e1c67b9982afa02"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d2dd58ebd7f1ed4485449d9eacf73cf991b5c7573d2fe4841a49344fb81d446c"
    "ko"
  end
  language "nl" do
    sha256 "beb77a3061063294718e122aa6d00fa4b2b50f80b7a0b0c6c24f272e4eb70e98"
    "nl"
  end
  language "pt-BR" do
    sha256 "affb68484615ccabf2c0b8dfd4c7401e7092abf87435c0c3732d008d3fcdd1d0"
    "pt-BR"
  end
  language "ru" do
    sha256 "3b2632b756ef9541c76ac2c5687ab2957e8e65f4e95d48529f072bbdb982beb0"
    "ru"
  end
  language "uk" do
    sha256 "aaa7aec11d42bea31efd415a219b5f827e5ea5fca920eb3b8fabaee5c1ce3eca"
    "uk"
  end
  language "zh-TW" do
    sha256 "61c17ba366b4d961a94985e6d924986919834c595ed67fe93c4ebd9c086596a5"
    "zh-TW"
  end
  language "zh" do
    sha256 "84ca7d0e7508ecbbd37030a926153c4defeac85195277c743b6f88cd3f53172c"
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
