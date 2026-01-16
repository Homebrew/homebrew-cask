cask "thunderbird@daily" do
  version "149.0a1,2026-01-16-09-53-14"

  language "cs" do
    sha256 "1bc8e21b4f1c38fea449caa9d3d559b7792b8918eddd5e9a4a41f41a473c86b1"
    "cs"
  end
  language "de" do
    sha256 "4977f0c9fed786844b1f83dbe6bbf7a95babbfc5818f24c3bb804265c2349e6c"
    "de"
  end
  language "en-GB" do
    sha256 "7f54ee8fc20240217a00839f12810d9e7cf5037c97498df2fbcdaca08fe0447a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "926c3c24ab2905abbba32fc910aac0a39faad69fe7b6a54a6a7e37416a578913"
    "en-US"
  end
  language "fr" do
    sha256 "99a073b63ce8f654c6a1c4c97da57acde0282d56292412adb5f26f39ceac69bd"
    "fr"
  end
  language "gl" do
    sha256 "d0d5cd8b61ca0bf836178a74588f3e5218b634fa205f186bddbbb6a86ea068c4"
    "gl"
  end
  language "it" do
    sha256 "cc131eb6032dc11bac38f929c300682376e2bdda125061ededb85900ae0d5d0a"
    "it"
  end
  language "ja" do
    sha256 "1c6c1c418f4c10935c575047fae56b94d2a865bb5cabdb6aead4a122e640e5d0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3ea8939035a218503ef77c550e3350e42c4d086b7740cd60eb0a72ed0cdc90d8"
    "nl"
  end
  language "pl" do
    sha256 "9e96ee374506f8c6a748f7061cdc212b5f4dedda0710483ad417329b3ceeaf50"
    "pl"
  end
  language "pt" do
    sha256 "a3582559a0111b5343383de5351d8b457f380b8f139b7fd8e15445a456df8a65"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "58ef5fb8517a07fdd10c193e4bbe2bff1966a7d3dac6cc0180693214848c0501"
    "pt-BR"
  end
  language "ru" do
    sha256 "0f1f050b8ae7326c1ba450ee286a36ef2b5998180b6b0e404e940648cf1abc12"
    "ru"
  end
  language "uk" do
    sha256 "14546279750f441a7a353adf137637c4bc50fa2ef230f8b4e14fca6f6104df57"
    "uk"
  end
  language "zh-TW" do
    sha256 "834d8c4bccf9d9e45251fd2218417478134bec085db27a20c56cea632747d725"
    "zh-TW"
  end
  language "zh" do
    sha256 "344d6d2f8e7877be632668155aa056fa87fe5e3a6c5495b85863d55b8289940b"
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
