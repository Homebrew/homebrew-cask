cask "thunderbird@daily" do
  version "140.0a1,2025-04-30-10-01-35"

  language "cs" do
    sha256 "99855b13ccf11de7a27f730eae5eb4f2dd5c87dbe56467f90f85753eab14262b"
    "cs"
  end
  language "de" do
    sha256 "b6954b72185a700b63291e4c51fbeeb69999c8e84fa008b64393be689bc33476"
    "de"
  end
  language "en-GB" do
    sha256 "b650b9d5c089e4665eddc74daf826a863b0687ec2e97c86e72c565318efa7b60"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d36de94d998c8c5979c2cd148f4c44949b2df3e68fb7b67147fb2442af59d95e"
    "en-US"
  end
  language "fr" do
    sha256 "c2aad76bf6ee4514d850a91db310e16d9f26b5e74183bb6682e8fa18a455c739"
    "fr"
  end
  language "gl" do
    sha256 "b8fb5751361f5f6c207dbd29d9d33e3b4acb6b2935d1f86cb947cbc1ad2ff36e"
    "gl"
  end
  language "it" do
    sha256 "67adf4cab3a17c32f5bf41ddf679ec9f622a1389dd9dbeb3d772e963ba3a6340"
    "it"
  end
  language "ja" do
    sha256 "16811c2c166a10dd34d8e78f6b630e71967153c9e6f8c8f08d6408851606a1dd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c2bd7e15c07219403eb636fcbc41281fbac96bb0f8051a056b663a24b284ae02"
    "nl"
  end
  language "pl" do
    sha256 "344a3f189593ad6f3f52f5dcd40ad1dc24e96165869517cc61280e960243fb52"
    "pl"
  end
  language "pt" do
    sha256 "ca1717c2ee3f3616c06f2f28827e8712aaf92a8b369cd7d89f55258ad4d00072"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5a7263f92be6cdca20b47a4e4f3d00fbf355affda6bcd99fab494b45379df315"
    "pt-BR"
  end
  language "ru" do
    sha256 "932d77ea79cb188f56f108151cd7c42440331c7c78454742f6970128ec9985fd"
    "ru"
  end
  language "uk" do
    sha256 "28c3c8b97bad5218439526200b7804c1e8b27cb7ed3e1073f4be24ab329456e0"
    "uk"
  end
  language "zh-TW" do
    sha256 "6fe29706b0893ba83bc1fb54e987812f2a0405a5e2f21276d382cbe72e5146e1"
    "zh-TW"
  end
  language "zh" do
    sha256 "8fc075334c61857b8f54e32023e6aeb804923f542eef947fe8b2e3190742c545"
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
