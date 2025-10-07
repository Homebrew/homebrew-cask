cask "thunderbird@daily" do
  version "145.0a1,2025-10-07-10-53-01"

  language "cs" do
    sha256 "0f65b0adaeb15316295aa4225a71dac36e637101034b43d165933c88f78ec4e9"
    "cs"
  end
  language "de" do
    sha256 "441324842e7d8b33eda091316e4c61d15d3a05408ba77f8fd9f4adda81630b71"
    "de"
  end
  language "en-GB" do
    sha256 "4236c9e634025ac756a4d66f91d2166ef5fcc1cfcb18940a35e3899fc91491ba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71948184a8d466ef9efc400fcea83147c4b9ad061867cd9d75ee952a31d3d7a5"
    "en-US"
  end
  language "fr" do
    sha256 "29a9767cf92e06000f898973eafb5a3921e9f2e5c29979eeafbfa4d5991e89e4"
    "fr"
  end
  language "gl" do
    sha256 "4bbfba387c6f26147b537daa6fe012c3d17cf1a27494accb1bbd55d4b1697be8"
    "gl"
  end
  language "it" do
    sha256 "5e736e836957f7e001cc86c41116e058606be1b64bc3a9b02bdd25c7b23b32de"
    "it"
  end
  language "ja" do
    sha256 "4c2ebf58454b8125f09a1acd1b7bfdf4054d2d899bd025768fd1b6d9af05f344"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "69af6e3537bd9404a69fa8e72c809b9b2cd6fa1203151dcb62c0ce5cbc5c305a"
    "nl"
  end
  language "pl" do
    sha256 "a0523533115568c83710e36dfd7cecbfbdb8556cb09f235c5e4ce1331143721c"
    "pl"
  end
  language "pt" do
    sha256 "0f3f9de3691d97e617fb7e78de311173a50c490dcc57ff6ee95f25e3d0171798"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4eca342a4573d699a6df37fdd91eb74f424728dd63d85219476ef79b7fdfd61d"
    "pt-BR"
  end
  language "ru" do
    sha256 "9079a5c630b6c490683992e7b44b583322df66196835ef7499352b7ef1be43f6"
    "ru"
  end
  language "uk" do
    sha256 "db96c38bf42aa575e729622180e9376902c9ed96059181973940a0980d50b4f1"
    "uk"
  end
  language "zh-TW" do
    sha256 "5d366598fce2b2d384d2497c66f9ca0417a005856b9bf3bab064ef9a864b8077"
    "zh-TW"
  end
  language "zh" do
    sha256 "06c4182ad8c4df7e553d780c6796bc612338902b6ca505a97f91fe968d6c964b"
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
