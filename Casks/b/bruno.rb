cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.4.1"
  sha256 arm:   "c86e9bde676edcb628f5f78f538861782278798e576df9d5382b039240fca7b0",
         intel: "2a2ebb79757fc95787fbeb40ebb34837f4c9808c4c8c4b114e670e836d1c7ff1"

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
