cask "projector" do
  arch arm: "arm64", intel: "x64"
  archapp = on_arch_conditional arm: "-arm"

  version "1.1.0"
  sha256 arm:   "a2f51be000977500a0b1e08a6f357495c98600f542d5cd9cdd8e88cc3785679a",
         intel: "a509d7fe44ffdfbb6fb81058172558b47591ac5ac25376782574cf99be58397b"

  url "https://github.com/JetBrains/projector-client/releases/download/launcher-v#{version}/projector-darwin-signed-#{arch}-launcher-v#{version}.zip",
      verified: "github.com/JetBrains/projector-client/"
  name "JetBrains Projector"
  desc "Common and client-related code for running Swing applications remotely"
  homepage "https://lp.jetbrains.com/projector/"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :high_sierra"

  app "projector#{archapp}.app"

  zap trash: [
    "~/Library/Application Support/projector-launcher",
    "~/Library/Preferences/com.electron.projector.plist",
    "~/Library/Saved Application State/com.electron.projector.savedState",
  ]
end
