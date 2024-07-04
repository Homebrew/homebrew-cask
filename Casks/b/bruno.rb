cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.20.1"
  sha256 arm:   "689aaa889a48af4b918d1bbf4703aef7fbcef897e3db9899c928acd1b6b73241",
         intel: "4a6751b18f4200e656967f07d96f4e52f5077c20e25cd49e919be81b3bbe962d"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
