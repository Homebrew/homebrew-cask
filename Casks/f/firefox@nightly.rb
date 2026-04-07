cask "firefox@nightly" do
  version "151.0a1,2026-04-07-08-56-42"

  language "ca" do
    sha256 "5bbdaeada797f6c536e2a3b1b4266ee9a044eb1dbd8c9c1dd1cbeeb7c7ce2225"
    "ca"
  end
  language "cs" do
    sha256 "2aa974d3c1cf367d7eed9ef358a70575bc2ad82bd6f40e22ea0cf4b17e28056d"
    "cs"
  end
  language "de" do
    sha256 "f198bd9cbb8e393aa241b884dff3a2a32135727c3cd37fb69355d44a80fe3fd5"
    "de"
  end
  language "en-CA" do
    sha256 "431ada34c89a6966566d372ed19ccb08701ac966547d04234a294b7080ce83c7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3f77a9d92bbc05fe1fb8a93a1f8172c355c8ffd2af6c9db0bbe9011a9ef8e36f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5a817d864b7e7dd14d0293ee95143f76564fa711375217dae166020310a90156"
    "en-US"
  end
  language "es" do
    sha256 "0d4f26f42eced52fd8dc1248341b44a132015200727ae21572528dd30afe6a30"
    "es-ES"
  end
  language "fr" do
    sha256 "49a2ed5efad2bc84a20a048a17066a12ba1e6424b1ff021b27a580332a6d83f1"
    "fr"
  end
  language "it" do
    sha256 "021984fef46f98ce42ab7ddeb31d9a86b596825b531aa4ef9a6559dd757253a6"
    "it"
  end
  language "ja" do
    sha256 "9d39a8fba7b56e6e0708f2ba6b5d21953305efdcad42568c830f6e54b5ba6eec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a135135a8aeb4e16aa9cbd4197029580c240a7b22a3cbe4ad33189fba9d3ae1"
    "ko"
  end
  language "nl" do
    sha256 "31abfd11c9f032d0f42131239fb27db454286d28f0c5e53d10efb1ad6b671e73"
    "nl"
  end
  language "pt-BR" do
    sha256 "319aaac5161e4c4638a7ea387a4111424df3d50b2e0d2d1fd16bca4bcef7240a"
    "pt-BR"
  end
  language "ru" do
    sha256 "8dc275028322ae1a50334a2e38750126dff34fdef8fc4567a2532818e538ff85"
    "ru"
  end
  language "uk" do
    sha256 "13e29368a035a91cb6ecc557abe31483088cc4be174811044b5bc5fbabfecb88"
    "uk"
  end
  language "zh-TW" do
    sha256 "8eca178f6a4191b8b256b1a7660bdbe72e065a998457897da20f83eaf936caf1"
    "zh-TW"
  end
  language "zh" do
    sha256 "87b8d25f41679babf410b892f2746eb4d8c26eaffac1c409f961aff24ca54f2a"
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
