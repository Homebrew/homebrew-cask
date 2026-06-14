cask "thunderbird@daily" do
  version "153.0a1,2026-06-13-22-32-31"

  language "cs" do
    sha256 "7eccefc3ac7ebbe977855c75cbf02a9d701daaabdc0b10493c78d86041324723"
    "cs"
  end
  language "de" do
    sha256 "7ac9bcce23a554df0c5dc1142a47b56b366cd49c65f2295ec7c60c147df3f26b"
    "de"
  end
  language "en-GB" do
    sha256 "2c00f4a0dae792fcd972d810eb40b4798b1b857283b1a806406d7a56f8d61a89"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f437de4e4d0fd0a56b07b6089caea7f948cff9ef5a87dc0068b9da4f744f56e1"
    "en-US"
  end
  language "fr" do
    sha256 "1ed622844f925cf8ccf06ebd1954b41395765caecc7824184e6fa399e0b191c6"
    "fr"
  end
  language "gl" do
    sha256 "3ffba27755ffe66d8bd023d2fd9e51d1f2284c0e70890d1c652ecbc501877289"
    "gl"
  end
  language "it" do
    sha256 "157ad8a23731086ce2056bb745c4c76d0f5e3bec8848b54218b54b265f47f1d3"
    "it"
  end
  language "ja" do
    sha256 "f6a1f164660ce31424223238c0481c8e0ca8b27d7162e1fbaa10b97b47a1b992"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "90c12ffca9f183a8b38e6ea8707b871ca2a6b9d9eb498b70b0d95d10d99dc0ee"
    "nl"
  end
  language "pl" do
    sha256 "f55036ff37cade19a7bbd48b4fb444082a272254365f45290ae392a90305870e"
    "pl"
  end
  language "pt" do
    sha256 "787601582c242c32a6b9dc445e9f9344408eb2e02f8331466cb5a52b4998e571"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b33ace4bc05935409a9b10cc6e5a284486cad26173ee04bd2adcd281b932c82e"
    "pt-BR"
  end
  language "ru" do
    sha256 "c31e904788ad8abb4f76d0096cd72a50d84a82b0f50cb3240325e2b79e90cc6f"
    "ru"
  end
  language "uk" do
    sha256 "794c6809670bf2109a43409cdae55a5cc5a898e684992c9d80a4ab7927d89a50"
    "uk"
  end
  language "zh-TW" do
    sha256 "9b9cc8c2c298e2f93176fddc7e8090a03a66b77fb1c64e3e4813f425bac62dac"
    "zh-TW"
  end
  language "zh" do
    sha256 "5243006463d794dd2bd0b46f7f78e7f788e3f682f0343faa9d718a89e9de4121"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
