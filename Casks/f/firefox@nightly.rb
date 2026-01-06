cask "firefox@nightly" do
  version "148.0a1,2026-01-06-10-00-19"

  language "ca" do
    sha256 "189ecb9e7446ac926138549d3370a38e784fe27769c9a7acc1be8edd8fd664db"
    "ca"
  end
  language "cs" do
    sha256 "f45d4d939f420af3b270984b1748bc7ded4b0b58a2cd5f173515cdd4fe543b71"
    "cs"
  end
  language "de" do
    sha256 "88c977e13db587e536c24935e44bebc4fdcdf352747aeec1c504e26bcf2d8b00"
    "de"
  end
  language "en-CA" do
    sha256 "5fc8680314954240c2ce0f00a1317321d47735caeed3934bd6692b1015dd6011"
    "en-CA"
  end
  language "en-GB" do
    sha256 "004a1ac91e7489f4850fc8a635568f28db332e31430d68cb3f81cacdb8e5ff3d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "56b6f133c0a2977beb2d19e502acce062fbb9113e947c3225c993a4db41b2709"
    "en-US"
  end
  language "es" do
    sha256 "e7ba9bf3400e0eca3d19d8576ca59a4b57bf4bf8a42b8e7c88df1aa42557e405"
    "es-ES"
  end
  language "fr" do
    sha256 "132e122ba90e703fdcfe0d88352f1dca7095b114c9134ffa06a2a61cf03dacc6"
    "fr"
  end
  language "it" do
    sha256 "69a4a71a31a2f6741d3d628c84b35702577da8fdfa4cd9a6cd23afd8615561fa"
    "it"
  end
  language "ja" do
    sha256 "8715cfec27323f3145cf77b109e812029576e80697993ed3c6152a4eacd52b96"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6f47de0b5e14ae6f0d069faf29f94a5be13b52d8d4a0fddef2739a3cb12b0794"
    "ko"
  end
  language "nl" do
    sha256 "29bdfc2594af47392d7e9a0a331f429fd110753f962b49f2095fd6b8777c2436"
    "nl"
  end
  language "pt-BR" do
    sha256 "78b681d303aca9cac139e6c375fc2f1e5a2492c017ace585b17144ba3480762f"
    "pt-BR"
  end
  language "ru" do
    sha256 "ed0bd8000c1d5b7744d74847458dafad38f0b65ff86e59804d437e351408a264"
    "ru"
  end
  language "uk" do
    sha256 "3cc568091b536a7a2d08c5e88222728ed7e09a8c1122bfbef0057442eba7869a"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f749ef1c046b4a9a23b886fc6c70452c2f1aa034959993de8c1f548861bfb5c"
    "zh-TW"
  end
  language "zh" do
    sha256 "ef81488e9df486ded5114f08c7b0f47541646424523cef93812066671671c0c7"
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
