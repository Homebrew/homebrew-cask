cask "firefox@nightly" do
  version "149.0a1,2026-02-15-21-44-23"

  language "ca" do
    sha256 "ddb8d82d26bf5bdf194b08d50eee0ebd61abfa9de3c547aba5ef099f74a645f3"
    "ca"
  end
  language "cs" do
    sha256 "aced78a405ad646481512632d8367d05715219f62d61202ca4026146ca1f3807"
    "cs"
  end
  language "de" do
    sha256 "28697d931ea5ab63bf3263da1411eb91af33eb67be7208b4e629b144b801970f"
    "de"
  end
  language "en-CA" do
    sha256 "33468a5749ef31523c2061c2428fe148d38856c6d374dfa0734a3cd5b6252d69"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f60be5e1415479fe4c5109bad48726b65d3ddb1991c5fa36d5d62ab25af78e28"
    "en-GB"
  end
  language "en", default: true do
    sha256 "59d68fac65045fc129e3643c0b259191b8b6a0c1dca53723c7377d34882cb033"
    "en-US"
  end
  language "es" do
    sha256 "8aafe77baada623cdc20ba48a223a60e2cfac8906799bfc6fed40a008959e5fb"
    "es-ES"
  end
  language "fr" do
    sha256 "1b96cdb0340422b41ff6d99855e776f481f37a19927b526b1c660992a7cfcce6"
    "fr"
  end
  language "it" do
    sha256 "96ac2f58475225e0aa43336bd3515b5074fdbff5130d10717ba2169c0295422a"
    "it"
  end
  language "ja" do
    sha256 "da7fdc705ee42a826dad0d532ac970110700530a5f6ac8c754b345bfd133b5c2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "64cf7d7887afedfe6dd2a11b7d43f5b0add389604b580b04ed6cf9f64cb3bce0"
    "ko"
  end
  language "nl" do
    sha256 "4c6d155409d250ad2d76c53cc7e7b6f8761b1d6a50685e21983f288f128ea1be"
    "nl"
  end
  language "pt-BR" do
    sha256 "784e5ca000983f2def2a53e8a28c1120a434855e51bb6f45aaa1b5271f7c4af3"
    "pt-BR"
  end
  language "ru" do
    sha256 "a80cf01931eff923e44a5b09f085251894576cac021e9a5dffaf7f97e1049c94"
    "ru"
  end
  language "uk" do
    sha256 "a72d15dd015b1ce833c84ba83bc2d33e416d9638ad97693c28cdbd52a5ec54e1"
    "uk"
  end
  language "zh-TW" do
    sha256 "9dacb4ab5270aaffb9acb2420fffdff238d4e976ce9d6731fde267f6cef2dbe6"
    "zh-TW"
  end
  language "zh" do
    sha256 "826f3d9aaeaa417d83a35efb5e4aff1cfaf2fcb93e3d9ed87f33b91ec7676b19"
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
