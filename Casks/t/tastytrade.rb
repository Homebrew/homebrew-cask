cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.29.2"
  sha256 arm:   "d450cbda6c5a0f7076553688a842219a27c119eca8079ba0873d758fbfd1ef74",
         intel: "3f27d11bd06ab5af6c2da274ca6524da36b50396736c2fdcd4b04efc8ab2b471"

  url "https://download.tastytrade.com/desktop-#{version.major}.x.x/#{version}/tastytrade-#{version}#{arch}.dmg"
  name "tastytrade"
  desc "Desktop trading platform"
  homepage "https://tastytrade.com/desktop-platform/"

  # The version information is found in a random JSON file, which is referenced
  # from another JSON file. We can't tell which file will contain the version
  # information, so we check each until we find a match. As of writing, the
  # first JSON file contains the version information but this check could
  # involve further requests if the order of the JSON files changes or the
  # structure of the target JSON file changes. The latter would cause the check
  # to fetch all the JSON files before failing, which isn't ideal.
  livecheck do
    url "https://tastytrade.com/page-data/desktop-platform/page-data.json"
    strategy :json do |json|
      json.dig("result", "pageContext", "globalSettings", "tastyworksSoftware", "desktopVersion")
    end
  end

  auto_updates true

  app "tastytrade.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
