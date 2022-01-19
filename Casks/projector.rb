cask "projector" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  archapp = Hardware::CPU.intel? ? "" : "-arm"

  version "1.1.0"

  if Hardware::CPU.intel?
    sha256 "a509d7fe44ffdfbb6fb81058172558b47591ac5ac25376782574cf99be58397b"
  else
    sha256 "a2f51be000977500a0b1e08a6f357495c98600f542d5cd9cdd8e88cc3785679a"
  end

  url "https://github.com/JetBrains/projector-client/releases/download/launcher-v#{version}/projector-darwin-signed-#{arch}-launcher-v#{version}.zip",
      verified: "github.com/JetBrains/projector-client/"
  name "JetBrains Projector"
  desc "Common and client-related code for running Swing applications remotely"
  homepage "https://lp.jetbrains.com/projector/"

  livecheck do
    url "https://github.com/JetBrains/projector-client/releases/"
    strategy :page_match
    regex(/projector[._-]darwin[._-]signed[._-]#{arch}[._-]launcher[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "projector#{archapp}.app"

  zap trash: [
    "~/Library/Application Support/projector-launcher",
    "~/Library/Preferences/com.electron.projector.plist",
    "~/Library/Saved Application State/com.electron.projector.savedState",
  ]
end
