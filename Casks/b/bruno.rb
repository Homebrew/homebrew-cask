cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.10.1"
  sha256 arm:   "f2b96a42eed4d6cd9d407dbb520a9a27cac2e506e67d5b7a89e4dffb3041540c",
         intel: "c563ac9e7ac8289d2a8cc88719b5c3b5a55179de3aa08a36c13ab42479e3eb1d"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
