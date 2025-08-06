cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "a41227fb0334240f39534a9584ad35423cb98287a1f2f69cbfdf3759ba1b31a0",
         intel: "b4d2b3456e43d151c5aa101f54a15779d71d8b4f32a64510213aacf64f57e2c9"

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
