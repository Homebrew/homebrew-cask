cask "firefox@nightly" do
  version "148.0a1,2025-12-20-20-24-05"

  language "ca" do
    sha256 "b1d3c88e3c6150f0b05a8ab96ac4ece0a2bc5105ad2dccc785fda97e65f3eda3"
    "ca"
  end
  language "cs" do
    sha256 "bc4f9db149ac8113b1f4f27d2d9f258f570727401a00b43017b40ac438d90f2e"
    "cs"
  end
  language "de" do
    sha256 "0ef6a103817b2907feaf3bce59d73fa5bce816cd12ae9afa60142cba20b388fd"
    "de"
  end
  language "en-CA" do
    sha256 "307716934170fe37aa683e2c2c801c323f5333cb82a880b8f27afa17e4b35ee5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6209b5571fdd85f8e2c1e79d65f3a02d42c1d5c5d7fecad4a373498fd88e24f3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "861df1286c45b8e7b06298ec304ae3fb179419d5d94536447da29823097f9ea1"
    "en-US"
  end
  language "es" do
    sha256 "79d0fb8d42b13a3f3f38be452bb93033e7c9341ab30855f03d8d1a2c30f63173"
    "es-ES"
  end
  language "fr" do
    sha256 "304083dae4ad45ae43165138209084aca2cb0cb44b25f3b38c47e3001684eab3"
    "fr"
  end
  language "it" do
    sha256 "7fe5c5a0e5afa0dffa1de32ba2359a3d2a9988b497657115bb5a31141dbcfb15"
    "it"
  end
  language "ja" do
    sha256 "1ca5382653a443debda401cbda17872bf9ac2ba734521d30d9f15a0d4657f0cf"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "83b11ab6e7965e4089fcfa47a5a22c0d5cfcf9cc9b11dfc6a5e5454262909681"
    "ko"
  end
  language "nl" do
    sha256 "1bdc3e051a40a8327af5cd900b6ea842e30b35f63b65b0cb093dea1f3c5b9cd3"
    "nl"
  end
  language "pt-BR" do
    sha256 "f293191c18f9bd9bbb6a991116ade28c2396fc6851cea4b51f48f8f58b2e5531"
    "pt-BR"
  end
  language "ru" do
    sha256 "4224be9099fb777d413ac865fb9396afb1c101560197a4c63f2e13cb0700cc45"
    "ru"
  end
  language "uk" do
    sha256 "efdca4b08cc17d0f208f0fb926a205f7fd3239f9405e1907e7d658f2421d5c7a"
    "uk"
  end
  language "zh-TW" do
    sha256 "58cd08b82346e873138b7181b02512ec8fa34170d9cea0d815bdbeda82c17077"
    "zh-TW"
  end
  language "zh" do
    sha256 "695398bd6d4a1c4d11ca27ba1ba20191f24cf07e42798bee0375d0446ddb0705"
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
