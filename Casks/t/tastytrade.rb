cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.11.0"
  sha256 arm:   "7f0d64639549ea11134f4dda8a0680e017c6fa9a37a2e3efb4f039a59a909000",
         intel: "244c509640e9518e49cf9fe00ae0f1984fa290f2c3a4c45f9d94e5e9f2b4c00a"

  url "https://download.tastytrade.com/desktop-#{version.major}.x.x/#{version}/tastytrade-#{version}#{arch}.dmg"
  name "tastytrade"
  desc "Desktop trading platform"
  homepage "https://tastytrade.com/technology/"

  # The version information is found in a random JSON file, which is referenced
  # from another JSON file. We can't tell which file will contain the version
  # information, so we check each until we find a match. As of writing, the
  # first JSON file contains the version information but this check could
  # involve further requests if the order of the JSON files changes or the
  # structure of the target JSON file changes. The latter would cause the check
  # to fetch all the JSON files before failing, which isn't ideal.
  livecheck do
    url "https://tastytrade.com/page-data/technology/page-data.json"
    strategy :json do |json|
      requests = 0
      version = json["staticQueryHashes"]&.each do |static_hash|
        requests += 1
        break if requests > 4

        content = Homebrew::Livecheck::Strategy.page_content("https://tastytrade.com/page-data/sq/d/#{static_hash}.json")
        next if content.blank? || content[:content].blank?

        hash_json = JSON.parse(content[:content])
        version = hash_json.dig("data", "contentstackGlobalSettings", "tastyworksSoftware", "desktopVersion")
        break version if version.present?
      end
    end
  end

  auto_updates true

  app "tastytrade.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
