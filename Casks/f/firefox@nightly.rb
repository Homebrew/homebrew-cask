cask "firefox@nightly" do
  version "142.0a1,2025-07-12-20-21-57"

  language "ca" do
    sha256 "67e52303d31bc27ed884b464a5fffebe6568a438257a394a11f42e4fc89d09ae"
    "ca"
  end
  language "cs" do
    sha256 "40cd3b188d349234224eb4402314bede7b44a2d57779d4859cd7725c314be2c2"
    "cs"
  end
  language "de" do
    sha256 "2e532903ea08ba28d64ed30bb6338885ff1e243f5336586cbcc6b4b0b1bcb628"
    "de"
  end
  language "en-CA" do
    sha256 "1dccd7e97d9313e28d43735f63be61ba964e3e5094387f931e17c2c924f0e6fc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "71383fbc8f650b78c5d5d00018276e036c7071d44da67bf8a44b402b6644971f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e6625ae7ee6995ebaef04bdbb6f70c3f177d92344b16efb3331abbe5f37b7a58"
    "en-US"
  end
  language "es" do
    sha256 "ad47bb169b005c49d3a2ef743ce4c2332a534911256a7097e99251e20d6b5999"
    "es-ES"
  end
  language "fr" do
    sha256 "f6d205fe5ae55d8925dcd20dc89cc12af7024e71420502370d1974d5bfcfc140"
    "fr"
  end
  language "it" do
    sha256 "cc92f7c73b076eb706c1614ec5d8b9a603ae8c00e883d8935398828aa57eddb8"
    "it"
  end
  language "ja" do
    sha256 "a0a7943a7f6f0358a527dc8c2c1b1c967f388ae29bce853fcf8eee6041cd16b9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a58338e910defdc7f4acc0edfb7e5fe2a8f76593cf8e1e18c40b4c698c915da7"
    "ko"
  end
  language "nl" do
    sha256 "44c2b02396cfb255814c843b93b15e60af0a506565b9cf260b8cdff65c0e46fc"
    "nl"
  end
  language "pt-BR" do
    sha256 "33fb19d1b03e686183fb4dd45a45cfb51a7d6083051d841eea60944f409d0064"
    "pt-BR"
  end
  language "ru" do
    sha256 "5818521e2379d6cc856863068f14118ac38197534007b70603daf07c21b64cc8"
    "ru"
  end
  language "uk" do
    sha256 "9922c5e604aa6c1e8a5b0840f6143be05332103d8a35798b5a3ec3fbab79a0ab"
    "uk"
  end
  language "zh-TW" do
    sha256 "78600f75d6919d9e8b44bda5c31cfef7b6aabc2b132a801a65bd46788251d66d"
    "zh-TW"
  end
  language "zh" do
    sha256 "500045d5958005b6fd7e1c6df4e4c562e0dfdec77cbd3bd19fc8de6a1128850d"
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
  depends_on macos: ">= :catalina"

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
