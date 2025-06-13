cask "thunderbird@daily" do
  version "141.0a1,2025-06-13-10-24-17"

  language "cs" do
    sha256 "3c3a689c61bc78626b9c7737b59855c0cca43f04afc06fcb8f54d6d287484aac"
    "cs"
  end
  language "de" do
    sha256 "dc9320195957c614a40ec697e73bbc27f997bf15d6d212dd9c5635f27a57dbbf"
    "de"
  end
  language "en-GB" do
    sha256 "598b35153ca78b66cd7d28515c8e6531d7b77c3235a6944a10baaf544e628322"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d7103bfeeea72be724c86870bf891a5f6fd0e2c32ddd489376d1295f36834476"
    "en-US"
  end
  language "fr" do
    sha256 "6e73129d278aff30e2eeceb2d0e70ed58d2c393225a102905fd9743e827216cd"
    "fr"
  end
  language "gl" do
    sha256 "5855877d02dea9b347a1f492363797941395cedf8b76efc80b70ad6a85aac50e"
    "gl"
  end
  language "it" do
    sha256 "2de48346be6691f2f32701aac907523e2dc64d64ef68b638e7a6dc43512912ba"
    "it"
  end
  language "ja" do
    sha256 "34ffb13c8e8f8fe3b45b86df4424729ef4a59b20ea92af3052dec69084cffc40"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f405cf1da4e8a7093d3efc58ec65d001fea177341e1bd9e07e25db14a881e5dd"
    "nl"
  end
  language "pl" do
    sha256 "76689b9f286159244ec322d89529d42b927e0c3df1ffa79c75e41131dcf971b0"
    "pl"
  end
  language "pt" do
    sha256 "7d43180b321ad9383553cdd85528062df5d9b855d5b317343d9e559b7daeee90"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6d71fed05a8ca342bd0eb6ed1d4427d484d27962ede437dffdc6b9c4efa1ddfb"
    "pt-BR"
  end
  language "ru" do
    sha256 "c8eb3f5440a809e68e662ce02881d278fc286ea119b57299a5e44f14a7e9700d"
    "ru"
  end
  language "uk" do
    sha256 "a024aceaabd3bdeaef52421ef8640cdf98018cbe48ab1408b669dc059ad7e34f"
    "uk"
  end
  language "zh-TW" do
    sha256 "36fdf8bf14ee3fa2848f6fe1be9a8517d30a00c502842be4e894b028bc54d3c8"
    "zh-TW"
  end
  language "zh" do
    sha256 "603a1c12fd0d4d67710d34d960741089282822af36009be0d99d3132e3f0f09e"
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
  depends_on macos: ">= :catalina"

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
