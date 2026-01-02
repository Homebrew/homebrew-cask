cask "firefox@nightly" do
  version "148.0a1,2026-01-02-08-38-05"

  language "ca" do
    sha256 "0970d0b7276bafc46a61bc125722bbffee5c572b7cd5351893c32b947dded261"
    "ca"
  end
  language "cs" do
    sha256 "2aebad9aa4cb1a677cf95d5383e9296008dd08c7ad06ab3d48386f1645724c69"
    "cs"
  end
  language "de" do
    sha256 "32f9e7480daeca08b8fee7cdaff5ae11e4e97561e4bb6ce8935f6fc0370d85ac"
    "de"
  end
  language "en-CA" do
    sha256 "760b01a330afd23be0b80d74669e81b35a6960a786f1fa5bbef1e434882ff8af"
    "en-CA"
  end
  language "en-GB" do
    sha256 "99cae907ca3566ed7fd90e1c4633863653423a4693a74e3e59fd6bab091be9fe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "794944cefec6b9a8da1bad5b96ad7f08956784262c4e9160a7b670496a926cf5"
    "en-US"
  end
  language "es" do
    sha256 "232e92701f5105ab7419e61b56e91d4c49b940c902556fa506308a9edf8fe994"
    "es-ES"
  end
  language "fr" do
    sha256 "752652790b21562db8c84065affae755d94b2f6cf583f39a761d0445aa5de20c"
    "fr"
  end
  language "it" do
    sha256 "ec2a4e158dcb032ed121ef3b1d0bbde0447d58f7fa81d4d9b7911dab51830ca9"
    "it"
  end
  language "ja" do
    sha256 "a36387701ec8e819c6294b240fef7d8bd20bd8b0814487195f30dab6cce630f9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "182e7afb140d41c2f0f0dfc9a00e229455998e420b2266bb0a3634d876298119"
    "ko"
  end
  language "nl" do
    sha256 "70da01be2ab2e4a5ce2f5b7516d47af6f4e06523fc7ab6619d201f517c1d0882"
    "nl"
  end
  language "pt-BR" do
    sha256 "5e9d6f88663f1dfc058ae6943d024668778b974740e2f7f6ba95e073f99430dd"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc7bcc76f10bd24afbd7c92437be30a29defa1d4b423957334f9b36d44eb3469"
    "ru"
  end
  language "uk" do
    sha256 "c2bc81c3f7c3e2f9840c2fb020b7532bd91e5367bcc7806fb917b9bc7b071f95"
    "uk"
  end
  language "zh-TW" do
    sha256 "fdef848294f4fcb25bf69e17395c261308b5c9ffe2da3f18c43e740b24a4526c"
    "zh-TW"
  end
  language "zh" do
    sha256 "5f61abdbd370b3fc15908310cde7c714c4a54beff359a00498c04d3e3968c519"
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
