cask "firefox@nightly" do
  version "151.0a1,2026-04-13-22-08-54"

  language "ca" do
    sha256 "ad32b832be16ad02202932c3a715bc297c34efe43be180309023e447c4a0c524"
    "ca"
  end
  language "cs" do
    sha256 "f713fc230e15365a862bca30de35bc57dc6d013264c55c6f9a9717651a019e61"
    "cs"
  end
  language "de" do
    sha256 "c50815a64fd280e1d7bc25d305df8548375aed0575103d4242a55126aad96660"
    "de"
  end
  language "en-CA" do
    sha256 "70dc2ffdfb04d29929a1de8a0790252c3999be9b8c3567876632add0419bbaab"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4b05f94eee605232c28b624f4497a5a1fb0d5730da3d1ff00fe877fbd4b90dfd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8d947eedc92c3fbe3be9acad49e53578425ed01c06c31e31356abac16555658c"
    "en-US"
  end
  language "es" do
    sha256 "be0c946d802ecf8269ae3929f6864a7eb735cc069f705829857d2c57e67ca8ff"
    "es-ES"
  end
  language "fr" do
    sha256 "14b6e6f34c238ed47c834da308396277542c9817024483356000cbd143ae3cca"
    "fr"
  end
  language "it" do
    sha256 "72b8b77424f23ed63aa06ba20dff29b9312530417137947292009416c5398819"
    "it"
  end
  language "ja" do
    sha256 "3d687d9cce92512bb57fa7476dbe0caf3f464c7bbeeac8ea016ae645cf5d6645"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fa1632122cf96df80531925de5813ee620fffd5687cfeb2acdf8a4c7c7c3eae1"
    "ko"
  end
  language "nl" do
    sha256 "68cc5ec0fb679fbd6b2cd465386c2750114c3d3c4e06f82bc8d283d775c5b5c6"
    "nl"
  end
  language "pt-BR" do
    sha256 "8dc0d46449bb58103081af0487f59407af4be1c379de3bb092e8653aaf62679e"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d77b4d9cb7b87461ca0c68bd3dcc85835bbbd8d89b89115fc0909269a361368"
    "ru"
  end
  language "uk" do
    sha256 "619ba4fb7059a670dc81c915286d55eaec408a2518b55482f055ec27eed2b68b"
    "uk"
  end
  language "zh-TW" do
    sha256 "3809cf7b50bc4e3b644be94187322d218ca0d368c9d9d181a0b48bfa3f8218bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "b488b120f67ac34325bf9d2f8406051f83c9a77248998712622f2fb0114580d7"
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
