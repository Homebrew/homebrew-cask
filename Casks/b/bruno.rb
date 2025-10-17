cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.13.2"
  sha256 arm:   "d500fe691d55ccc4a8e0dcd8759a06c97a61032382ac1cb854c110b4b7705fa9",
         intel: "50076d5d4cf9c8bf31e19bdec17207222515eb8fd2a7159cf2ee0b69cfe7c304"

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
  depends_on macos: ">= :big_sur"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
