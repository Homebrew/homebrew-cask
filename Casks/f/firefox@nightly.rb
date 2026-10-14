cask "firefox@nightly" do
  version "160.0a1,2026-10-13-21-09-59"

  language "ca" do
    sha256 "da8d67782886f1b2eaca4e05c67299c1528027f615e49261e61441119f5d22bc"
    "ca"
  end
  language "cs" do
    sha256 "a45e8e44a8af9a0667aed42f38310548e81fe5448897372869c6173e941a10d1"
    "cs"
  end
  language "de" do
    sha256 "f915556d3b92daada0763ceeda3fdcf93ed76f8628e219d3ab329c65c3735ce7"
    "de"
  end
  language "en-CA" do
    sha256 "364590c49668eccc9fd282461a76bc9c9ee032dc7b3526c6d97cc96b8de960fa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d6440eda08fd26852bef7e6bad81d62eb666f525b5123176526b007ac1b81364"
    "en-GB"
  end
  language "en", default: true do
    sha256 "52c77cff7ddb7bd30dc5b06b760530050a79c580af96600d7404db0622425ed9"
    "en-US"
  end
  language "es" do
    sha256 "231f6e2acea2fe1ea7c3e9dc232c0979796ec280dc52ecea3b10c46a6ab661a3"
    "es-ES"
  end
  language "fr" do
    sha256 "b41988150e4cd2adaa4033d5d18d875a485f63c78cfded4b76142d4091176829"
    "fr"
  end
  language "it" do
    sha256 "2cb6a927dbf14d41676c6312ac5a7cfa44bc53ab444d71316ffd340c809bff27"
    "it"
  end
  language "ja" do
    sha256 "87fdb2e851bda3c95c497a4c2b34fc2f2b481443387ec39ed625f2a23bd63e06"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5ad19df1c457bc1da79df6951dfa19d5342b88185209c99930d450ec8aa22e25"
    "ko"
  end
  language "nl" do
    sha256 "1d0fc4611949498fcf53219c9637703cf407f7eafedda704f8b0ecc125c5b445"
    "nl"
  end
  language "pt-BR" do
    sha256 "3f571ca83a23016d3b7bcc55cdfe72e0745b89b114a35e6093e98e5205e81813"
    "pt-BR"
  end
  language "ru" do
    sha256 "6fce2ebd3253e5a5b9ed3baa3bb6a821e5ff19ca9c4d03627394a8a72a9b7c04"
    "ru"
  end
  language "uk" do
    sha256 "c444dfb9d519d9e3816bcd4fa60bf99f9ae1559548dff5fda03e5d52aaa1027a"
    "uk"
  end
  language "zh-TW" do
    sha256 "2b62a6a17aeaf8b5f3e98d51d9757a0f45aff6f89101f5b45b228b0c8c6c8241"
    "zh-TW"
  end
  language "zh" do
    sha256 "99572eab3db8b68c583b35e6ce01554c1312de6a8fe5f368656ea0e865673026"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
