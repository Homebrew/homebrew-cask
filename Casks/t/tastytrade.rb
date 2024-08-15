cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.15.0"
  sha256 arm:   "6d2b3ab971ce81b5514102fbd2e09cba0717677a670d91a1a94765ac9500bfca",
         intel: "12203c24db3bd49afe3727cee27d2ab829b53b42c46a221c6633166a0938898a"

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
