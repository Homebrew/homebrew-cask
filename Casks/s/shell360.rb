cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "460b79a34428811278cf9b7aa9427d458639bfd4e8d09271809ada9a7443d32c",
         intel: "b131668a86bc9f7a68d117ccecb5ff05e6659180ffeb52f5cb26c73d0da74122"

  url "https://github.com/nashaofu/shell360/releases/download/v#{version}/Shell360_#{version}_#{arch}.dmg"
  name "Shell360"
  desc "Cross-platform SSH & SFTP client"
  homepage "https://github.com/nashaofu/shell360"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Shell360.app"

  zap trash: [
    "~/Library/Application Support/com.nashaofu.shell360",
    "~/Library/Webkit/com.nashaofu.shell360",
  ]
end
