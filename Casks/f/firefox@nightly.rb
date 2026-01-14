cask "firefox@nightly" do
  version "149.0a1,2026-01-13-22-18-20"

  language "ca" do
    sha256 "54afb799467a044620bed00fa0f68f7488a0b97d89e153b07742e4b91838bd5a"
    "ca"
  end
  language "cs" do
    sha256 "d8ee96ce3d76325ac6dccd62928c4c746df93fce922c92b00b1348fe58b5789c"
    "cs"
  end
  language "de" do
    sha256 "0b8177060b8476fe45acc5c17cf4653276ee014403109edb965d3d70bfc9d9a2"
    "de"
  end
  language "en-CA" do
    sha256 "eba52fe38fb2fb406fbb13b9097b7cd5cb21eb3c0f2f612500a2837743e55004"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7a04e5398af6269862fd943b413d85950122dec8ea738b1d371851f9bdeaa45d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ecadf55f3227916eabc3282f1c74e4651b8d8949c010cdbd16b83c0e26c9f90"
    "en-US"
  end
  language "es" do
    sha256 "af20fa1541ad8d85a6966869c511ab63650e71ba416bb8ad5fde34415ee34a48"
    "es-ES"
  end
  language "fr" do
    sha256 "e3645b9b194fc7d239f8c4a9a36ae85e9c2abbda1ee8ad907619590efded98ca"
    "fr"
  end
  language "it" do
    sha256 "a4a89ad4b49e4418526bfab14ea7c8db4e472a2dbfaa8a4d9bf55c256d6a4490"
    "it"
  end
  language "ja" do
    sha256 "dad52a59fbfa33d4533b4c3d114af8ca3bbf8c2e1b49f7d95ce53c620a6dfd0e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bcf40d610144a5bda0e27d48bc0a09bee7b4b49aa0db478d66cf32ea4ffeb10a"
    "ko"
  end
  language "nl" do
    sha256 "aae87a874c4cbb2aefa02b533830b66bf24f68650b30a6bc287bb21e40c264a9"
    "nl"
  end
  language "pt-BR" do
    sha256 "a0e379cf9a59a6dd2c039d2b1e9b9812c3c86bdbfe1aecd39129f3f4a723e874"
    "pt-BR"
  end
  language "ru" do
    sha256 "1fb95b23ef3ff058e3c51c16f10fde111dc1732a8a49d30b5863b771fc757533"
    "ru"
  end
  language "uk" do
    sha256 "bbf1cc0bb0ee7453f5f1f234a46368e7c25566a531628f74ac798493718b13b5"
    "uk"
  end
  language "zh-TW" do
    sha256 "054210be79984760d7aa84e887ef7b6a540a98d5813f40df1a0fc4fd2e7caf25"
    "zh-TW"
  end
  language "zh" do
    sha256 "bb20bf5b8104f8810d7cc56ac3448a10256a5639bb373c76c45e3c95ae10c1d7"
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
