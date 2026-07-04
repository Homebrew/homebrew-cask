cask "thunderbird@daily" do
  version "154.0a1,2026-07-03-23-27-43"

  language "cs" do
    sha256 "0b10548aa53d5fa8598045112beb2cd15692c3c5ba003c21d80460d80e26f4d6"
    "cs"
  end
  language "de" do
    sha256 "540387c21fef71e7a8039c1f24521b740bf0b6c2614f27e52e318011334bd612"
    "de"
  end
  language "en-GB" do
    sha256 "bd6cd7bc3f6070858283b69bc4987165d1bfe66eb79a595c8a2f5e8f34ee46c2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c0b5caaf36f5ba3231ae1aef256f2f106c63cc6df15273c46ebbbf6cb84f10ca"
    "en-US"
  end
  language "fr" do
    sha256 "5234bcadee6a7e5b97af1b4d68e0bf34910b07da76b2b9e400c4512e1d60c08b"
    "fr"
  end
  language "gl" do
    sha256 "2327ec340c95d9a7cef595d41f2b54537ec91ac4a3857dd1f6334ae982831d70"
    "gl"
  end
  language "it" do
    sha256 "39fb78e7562d65c5e2ea1f57e5d3dae9e226509d5385ae27fe36662b7fe06c6f"
    "it"
  end
  language "ja" do
    sha256 "d06de6e3214864d50a7af9755ca8d56cc170d73af7e02c112df2a3cbfd6aec4f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8aa780107455ac3fcfa7c8a03625e766c481f37ab8d5c409b9df42c2383976a4"
    "nl"
  end
  language "pl" do
    sha256 "374c63ec41598f694cf7f4d2c379becd6ff51ce26d89ee1cb236fa9e1a6dc3c7"
    "pl"
  end
  language "pt" do
    sha256 "bfe9dddf8913b98ed4562a1a03abd6e03250ddd6aac98b06002662cec705fe2c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "37c8e984aff0a844ff55fae1801df8f0e15ee8c698d6439910441681b94f8c73"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ba5d4c666ce51971e04a73919518f54323898a8bf5252ed0323e7f9daf48811"
    "ru"
  end
  language "uk" do
    sha256 "e5815fe776e3e5cabc78235c3da6d71b64460927f07f9203891b00366be10eec"
    "uk"
  end
  language "zh-TW" do
    sha256 "3113a53fd84638f1ecb010deb7dce6953072fe95d0ab2e564a4aaefc81c2aceb"
    "zh-TW"
  end
  language "zh" do
    sha256 "f7d2a3ae0cb02cdc351d50a10f65f78bbe88179add589a0d069ca87f5a3ce49f"
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
