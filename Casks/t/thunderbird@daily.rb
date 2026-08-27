cask "thunderbird@daily" do
  version "156.0a1,2026-08-27-10-13-52"

  language "cs" do
    sha256 "85b1b2ebf2af022e8171a62f92da497163d9ea9a8415f3b43a044226ddefd1fb"
    "cs"
  end
  language "de" do
    sha256 "a5d5e476e99a7b9860f8c0695e8555f8711856eb1c7043c9761dffe8c7d52fbf"
    "de"
  end
  language "en-GB" do
    sha256 "c95ae7368b34523e49f34d729ffbc52d27dc1104821fb5d16d64d2a4a2a8b1b5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b0e31a019e577889f758e389156355b4c703e8a92dc8740dcd11edac8a4d729d"
    "en-US"
  end
  language "fr" do
    sha256 "d30136cc9865be370f6fcb55c8a9cb4095f1175d20ada29455c98d75f92c14bd"
    "fr"
  end
  language "gl" do
    sha256 "bd4f419cbbc833afac56d422434890af6d3ffcd786e568e5040e49fba9719176"
    "gl"
  end
  language "it" do
    sha256 "2d0b016f4d049b51a12446212e9f44f9fb5d461d2d55378ee4b9dce77199bbe3"
    "it"
  end
  language "ja" do
    sha256 "f22f798f2d28a5a54148ccad655135b43257d1dd902f165feb904f67c167a5b4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c2a82ae72f8b655cfbe84d4cf939c8933310679741b03c122e302c3865cbebbc"
    "nl"
  end
  language "pl" do
    sha256 "5118fbdf9858c93d485b6c338ed14e07787e278babff13ef89a0c0f702621763"
    "pl"
  end
  language "pt" do
    sha256 "c6cb4525040e325857b658c1386dd8121fec637e33289a2a1bf17b972230f004"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4ab05708451696196059517252f2b1a21da74905fe5b126b2acb6bafe4707d5e"
    "pt-BR"
  end
  language "ru" do
    sha256 "304c104029a616966d59bc88e94913949d136cce25856ce05ffb3792c719d184"
    "ru"
  end
  language "uk" do
    sha256 "66c5eced8c54c785cfcf7815a21bf7ff0622ff2a61a2c98219ac695b942af65f"
    "uk"
  end
  language "zh-TW" do
    sha256 "248dcab6df43378b69c24f085b7dccfdb6cf35a2d805c7a9d1d53bd67fdab943"
    "zh-TW"
  end
  language "zh" do
    sha256 "7bed0eacd9cd59a9bb76394ff8dfedaad0615e332d808c28ea5c7d3fbc34714e"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
