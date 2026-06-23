cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "11490cd4d9ebdf3853371a3905129ad6628a88f23e9905fb0ec1d350bec58a2d",
         intel: "76a199a3fc78557cffd88bce4d66a451645134937d08660abc7891cd55c32936"

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
