cask "projector-launcher" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.0.2"

  url "https://github.com/JetBrains/projector-client/releases/download/launcher-v#{version}/projector-darwin-signed-#{arch}-launcher-v#{version}.zip",
      verified: "github.com/JetBrains/projector-client/"
  if Hardware::CPU.intel?
    sha256 "da84550e811c939f6df976a514377dee7849a82921deb97ae58f585a9a8df3da"
  else
    sha256 "910b7839811a5d3ea40cdcd56c15d202b91c1abbe5b7be34f73d6fd0c3fbdf3a"
  end

  name "JetBrains Projector"
  desc "Common and client-related code for running Swing applications remotely"
  homepage "https://lp.jetbrains.com/projector/"

  depends_on macos: ">= :high_sierra"

  if Hardware::CPU.intel?
    app "projector.app"
  else
    app "projector-arm.app"
  end

  zap trash: [
    "~/Library/Application Support/projector-launcher",
    "~/Library/Preferences/com.electron.projector.plist",
    "~/Library/Saved Application State/com.electron.projector.savedState",
  ]
end
