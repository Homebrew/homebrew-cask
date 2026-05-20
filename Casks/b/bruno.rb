cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "70fc8e555ed3a68ec73a4f3bdeb8f5e086b34c3a0d0642bd3c08a51dc8b2a6ac",
         intel: "530a7fd2a53198e57abc86da5411521b2703102790336d17a955e3f98831875e"

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
