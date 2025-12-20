cask "firefox@nightly" do
  version "148.0a1,2025-12-19-21-58-52"

  language "ca" do
    sha256 "3b7e5fd64f73af21ac9a0fbe5e890f4d41557a793d62ae405323745a26642aa8"
    "ca"
  end
  language "cs" do
    sha256 "842e8a6b6ca1ac744e0ebac35e7ec16b7b6052812fd3f6aa40bddc0651964d46"
    "cs"
  end
  language "de" do
    sha256 "c8ad8b46531f219fdef2948588f2b588f0c94c3852763e83ac32aca7d7ef81a8"
    "de"
  end
  language "en-CA" do
    sha256 "17bc2f168fce4fa2a819c4ca0ddec49615f69f60de4a3d30029986a15693df61"
    "en-CA"
  end
  language "en-GB" do
    sha256 "22f4d4308b13c8f7d41f6cee3bbb23e7c914a71378760f3aadd92c8cbb8a4797"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1f00ff34fb602ea66dcb2d1350be6a183c3181b86ac14af1aefb42408cb6fbc3"
    "en-US"
  end
  language "es" do
    sha256 "fba59b7a1253ca8a33a78aac5c1d080884e2822eab92a90910b0adbc0c85e0a7"
    "es-ES"
  end
  language "fr" do
    sha256 "ccdfca1979dc2fbae56529e9908a32964c563d7ec92a8b9c938c1668eebec3ad"
    "fr"
  end
  language "it" do
    sha256 "b6dd4ba73aa965fb40f264bb44a6af17f1496770ffef8a5fb8ea13f0869a870e"
    "it"
  end
  language "ja" do
    sha256 "283f330546ceb7c1842558fd99fe51fa9e230b3d3480900b62f547abce14fca9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ab05f40acafa41d8a340103726ea4da30c23a78c6597d44179c2a8b47764a8ac"
    "ko"
  end
  language "nl" do
    sha256 "d4bccda089324d0275abbd6b27999f8dc8483094ea4dd6648eb9fb2bf543a383"
    "nl"
  end
  language "pt-BR" do
    sha256 "a98de1dee9b0c4eb7f45f270359028f7f7b1ae666ec3a42b50ec92a3b2bf4509"
    "pt-BR"
  end
  language "ru" do
    sha256 "d5e050d81e6f9b2374d9636546e064abc94c24e3d1c344577a10b81da31bb2ee"
    "ru"
  end
  language "uk" do
    sha256 "f276f424dcddc5160d33041d28b9058011aa73433aaeaf6a2fe1d54248ee261a"
    "uk"
  end
  language "zh-TW" do
    sha256 "8e87d7742eb19211b68ff8ba5cc993785b73cb1bff3ef836036215ec66417b64"
    "zh-TW"
  end
  language "zh" do
    sha256 "ae602931ca3f39a1de662cc48a5b2b559a701d0facbafee6a97d1d3965ef44a0"
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
