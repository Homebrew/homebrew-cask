cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.40.0"
  sha256 arm:   "f2fa0c15e0dee1187d1bf8d4c6fd811c04b6fcababd3960ada53c59241a56e41",
         intel: "b70010adcbf4db149f3cbd566072b356239ea9b6ad4d0f7f6257eedf8c390a92"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
