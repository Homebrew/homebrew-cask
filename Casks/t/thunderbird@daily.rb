cask "thunderbird@daily" do
  version "148.0a1,2025-12-17-10-32-53"

  language "cs" do
    sha256 "4c91db41f44b1f0f5afd795a9c83bf0fdb4e1d0f9e6b746ed66526f3298cb26e"
    "cs"
  end
  language "de" do
    sha256 "15277c22d1bbd1bf6119b0681692b8e1ab37ab18d093b829dd88d65a3003b16c"
    "de"
  end
  language "en-GB" do
    sha256 "8e77ae748ce7e21fcc8fca38d414acfe1d3089c1376a7fd9968c9384dc247eee"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eb5d2884c2e0eaa8ade15333fd89f87669344371fc3047d0cda0db0b16483cc2"
    "en-US"
  end
  language "fr" do
    sha256 "4038e8880d93808003925aff178184f402fec33782bab58bf6a56ddd9af53546"
    "fr"
  end
  language "gl" do
    sha256 "d0d05f733ef687d553f523015599944335a44cb56a717076dc31ec673bea3338"
    "gl"
  end
  language "it" do
    sha256 "569d0452266f7583c97d8253f746327ccf221aa35180b1a43ea3e9eeea7d546c"
    "it"
  end
  language "ja" do
    sha256 "b04d03ec543d1a06a516268808fe791880481c454059d4259a956a22fd12badc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9227c9fc15cf9a4dca21478c1616bfa4ea7995fbed89f75eb366a43100dc6d2f"
    "nl"
  end
  language "pl" do
    sha256 "6f8f6c60d06273a7f9edcadb0a6b4e08aa42e3735bbf5158856376f473514535"
    "pl"
  end
  language "pt" do
    sha256 "6645135eff43f0704009e0698da9e8fc66ade036e23c1b499296bf34d6f06208"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "28d5b8ec0940a6ba9a543406bc018fb2c1211d5ce5eb7963b2c2bacfcf814b9a"
    "pt-BR"
  end
  language "ru" do
    sha256 "18af7f8c4cb7683c9a1cac934cf19e37ff90ed52ed3468dca3846f39cb440f82"
    "ru"
  end
  language "uk" do
    sha256 "00c869d5d8c1ba883a85f738bc21da1876baaf295270bbf97bc52be1d1e8d41f"
    "uk"
  end
  language "zh-TW" do
    sha256 "745185027a9d6901329685b1d13214ae32c47e02ab522c7698ac958b11dd2bba"
    "zh-TW"
  end
  language "zh" do
    sha256 "1e2dfe7ab539f147005baf71b362ecc5e107dbe9f2bccc07c25217b38d783f8f"
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
