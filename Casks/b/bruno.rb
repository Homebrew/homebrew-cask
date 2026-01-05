cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "b6c82e0d8e517687e525a428ca21d0f77a2c75cb585c82351a69d6bcc730c072",
         intel: "025c577f65ce7ed88936f5ef322706619624a23d60356915f6dc13ed401646cf"

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
