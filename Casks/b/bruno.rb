cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.15.1"
  sha256 arm:   "691813ebc0ac244826f995b530fbd43766ccc7c288a4acdac46baee859055816",
         intel: "7d3b404751bcc447a5cfd6c7e9b26745ca333f8eeb0e0951f1ab1686f84c8706"

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
