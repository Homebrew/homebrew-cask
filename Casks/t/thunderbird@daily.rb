cask "thunderbird@daily" do
  version "151.0a1,2026-04-16-10-21-31"

  language "cs" do
    sha256 "02589b93577562d17ca60ce11ebfee5a5ff761cca5b32abe4059789b4089cfce"
    "cs"
  end
  language "de" do
    sha256 "abeb5311f349e8dc72e879d01d1832f90e020a5957a8122311a0180d1cb33dcf"
    "de"
  end
  language "en-GB" do
    sha256 "74c3291128b95a5ec2e5a48d50827b811da23236d3315d08e20f95b400a19efd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1b0a3d2e2c447bab4b23d646dc0999f38d0c2d0c421642a08b4bacf5613fe446"
    "en-US"
  end
  language "fr" do
    sha256 "de624dc6d5b6083c6c9552e9fb6e3eefbe7f0eb4d9dd8253f58f2be748247adc"
    "fr"
  end
  language "gl" do
    sha256 "45fc5c8a281b38d8b36c914c0071c30da3387603538012e8c9e54d52ef7ceef4"
    "gl"
  end
  language "it" do
    sha256 "1687d9812d899b9e3a1226e24f51709b0ff7c79fa025595bd523a465b50a1462"
    "it"
  end
  language "ja" do
    sha256 "6d0fe0cc3892946c8c83600ee5b933079e944dee519dfa4fba3c26a53fcd75d8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a5f6fc200ba2d3234ed953e4ccae297957c6df5fefdf81c6f27cc8580c6bfd60"
    "nl"
  end
  language "pl" do
    sha256 "8751caa2d4bae15d812ca8e446a25c1fd2d0e12cfa76359d0f3e87f40d54b813"
    "pl"
  end
  language "pt" do
    sha256 "60d377631bd569300596da32bb0b7f7f5ca4cb05b69f523fe3cbb21ae4a2b4c2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a41a00a56cb85e24c16c00e5e44183e2946268b853f6a0367022b921b942518a"
    "pt-BR"
  end
  language "ru" do
    sha256 "149e1f05ea38538c7d68a7c9148875b175abd9727af28e1d6be7f0fcb12c3bc9"
    "ru"
  end
  language "uk" do
    sha256 "ddc1e3eb094a84d11fedfe5bc662bcb534660833e061a2d52761965e29511365"
    "uk"
  end
  language "zh-TW" do
    sha256 "cd043e32d62862af101046d6dad8e92fe000a32e55b073730833e9d004f583f9"
    "zh-TW"
  end
  language "zh" do
    sha256 "6dd8ae449eec365cd281fe1a724aedfebbf2bbb8903dac85d8b7edae1a90bdd2"
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
