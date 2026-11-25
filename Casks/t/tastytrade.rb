cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.60.2"
  sha256 arm:   "8774dc3797d55ed3a3a5f026c45e9152e19937f82bedd35c8e6cc485dc721e9d",
         intel: "5628b74ee0d6065deb514a2fc2cad03d48c950a0a94c40a0ca99d628ed991b2f"

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
  depends_on :macos

  app "tastytrade.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
