cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.4.2"
  sha256 arm:   "4878884cca0a03db2ff293eb5463e1d73ae24e82a168d37eb0314c21516f5ee4",
         intel: "723fdcc0fd84dbe84a3ac9b495deed516353ca2efc38cd4ffc67d69f55a755b7"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
