cask "firefox@nightly" do
  version "160.0a1,2026-10-21-09-22-54"

  language "ca" do
    sha256 "e12b80b695ebe21b57f7f8979e0dc659f3026b38fa9b084415f42fbfcec68012"
    "ca"
  end
  language "cs" do
    sha256 "4932c6c70f46dbffbf4f8c38851a052d93dfdd590170072aa053540868f5a77c"
    "cs"
  end
  language "de" do
    sha256 "2938e734df10f5210733332ba5d7a8a1f7d61cd1c5c3d1d82946aaa1f0888927"
    "de"
  end
  language "en-CA" do
    sha256 "08f7472bcf74b2d7b7c4509d17b8f813f7aa0b30e8db3efd8b5caa6cd386ec9a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8e743d0a859709b87b446e2190ccb7e6e2a4166a90aa9a21d9ab677375eac19e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d92ad780cf7246614c17a6ff1516214893adfd6af72a1fdef4b64ce460d8cec3"
    "en-US"
  end
  language "es" do
    sha256 "55c4fcf301fb73ca7b1f3e88e8decc0c61d1a364691ba941a85333f486af57ee"
    "es-ES"
  end
  language "fr" do
    sha256 "29e43c40bda25856e5f28b026b10d007171bf39077bec27e300389a4a9a3fbba"
    "fr"
  end
  language "it" do
    sha256 "930fed82671f5d87ecee691d2157eabc07e29f0267193af248aa040ac219cda8"
    "it"
  end
  language "ja" do
    sha256 "4c961656fd011537bd81cb9e0a6fdc216c124e036eed186bdfdfadf86d26fbe2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0fb708528d8a6bb61e7000ef7982ed25f557ed1787691d91ff2475fa130313d6"
    "ko"
  end
  language "nl" do
    sha256 "b605d51b2f9c2ed866c2dfb7766646ae6d4de052416edbe3ef62711e888386e6"
    "nl"
  end
  language "pt-BR" do
    sha256 "7519a1a6fe3df0cb148980f37322ab9f6a406ef7e27bf3b05570486cc1bf4cce"
    "pt-BR"
  end
  language "ru" do
    sha256 "34692856efb1664dada737af381fab449a41b2694a0ff631b102c91f348a33ef"
    "ru"
  end
  language "uk" do
    sha256 "8c810f90f2f498a6fdeecb6bccedcdad2ec6f25630b748ea2b6ba493d31ec5de"
    "uk"
  end
  language "zh-TW" do
    sha256 "393ffbf9338154f9763b60b95f8ee2b6f30085715727b2e992dd7e095f6b77b7"
    "zh-TW"
  end
  language "zh" do
    sha256 "f789bdbf8750a8ca75e838b191d8f380ea0da6387588f731561547baf80b0e54"
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
