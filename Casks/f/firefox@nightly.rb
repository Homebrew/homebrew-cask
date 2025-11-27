cask "firefox@nightly" do
  version "147.0a1,2025-11-26-20-32-39"

  language "ca" do
    sha256 "0eae846d504537bf78de68532726563fd411c46c718a38eded17e4ff8b6890fb"
    "ca"
  end
  language "cs" do
    sha256 "2e7ee5ec5a1f05cbe125cae05bce9e949938d5b4d1d032e2461d583bcea007d5"
    "cs"
  end
  language "de" do
    sha256 "3732dd24d25e603a8cb99df0a252841da1c3c1ca6814e1f11159e2b08e05c324"
    "de"
  end
  language "en-CA" do
    sha256 "23a5a30eb951f9725cc61702b2545ac1edb8e2e6ed8e99633613a73add4a1593"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2bea8628251b26601271d4f8a123e7cf6520b1942b28294fcd912a6eae1ff99a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "92d7641d48016ff9d5644c06a1e2c322625e8faf8b5ef6998517cc5ef2b4e2db"
    "en-US"
  end
  language "es" do
    sha256 "443c24ac6f5c1fb7c4383ff927dc28f383a5aef7f1ecf1c5dd1ea714c3162013"
    "es-ES"
  end
  language "fr" do
    sha256 "95d6beafba248ada40f34fa6ace46db526e22ba745ca9a316e82c50d139b6314"
    "fr"
  end
  language "it" do
    sha256 "2f39126e06e18696c9fb9a569c7311e13648f11b5ab2cea2682e07fb49c2c5c5"
    "it"
  end
  language "ja" do
    sha256 "0e4956038938b28655d69b7ec68f07e2ab2bc2bb1dfabadaf59acfe0d429d315"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "15c86d22b2a252110767a300b6dac3d5d7308c18e4168da23441c17681570ff5"
    "ko"
  end
  language "nl" do
    sha256 "e56a51ab96ac2c351a20551b3aab4dc25f51d7d65981001884e12a9e0f1ef9e4"
    "nl"
  end
  language "pt-BR" do
    sha256 "87e2302ea30185986e42f61f875406b96114fbe1a415fa3265bbe00af3c9a0f1"
    "pt-BR"
  end
  language "ru" do
    sha256 "2099de69189136bfb2f8f4edaf06864d30f09f6d4db058057fd2ef01d854a137"
    "ru"
  end
  language "uk" do
    sha256 "0b3a854f8c9d44da43a05dde52694a3d7dba0978337917b653a0cecf822df60a"
    "uk"
  end
  language "zh-TW" do
    sha256 "7b444112901b64bde9a7d6cec0eb9cfdbe19029820723ac087c141c88e06ebcf"
    "zh-TW"
  end
  language "zh" do
    sha256 "051cab09bfc446692e48fac1774c996883ebcee1c623c9edd9b2a9a4798822e0"
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
