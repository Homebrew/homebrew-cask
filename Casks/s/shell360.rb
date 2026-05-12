cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.20"
  sha256 arm:   "8e55baf1aba5e1044be94c8894bad0a8cc141a1d8fd7f0f5e50a20d3595dbaa0",
         intel: "d34311eb1ee75604c88ee517990f56b0a313f125e695443c511ed51782dba45a"

  url "https://github.com/nashaofu/shell360/releases/download/v#{version}/Shell360_#{version}_#{arch}.dmg"
  name "Shell360"
  desc "Cross-platform SSH & SFTP client"
  homepage "https://github.com/nashaofu/shell360"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Shell360.app"

  zap trash: [
    "~/Library/Application Support/com.nashaofu.shell360",
    "~/Library/Webkit/com.nashaofu.shell360",
  ]
end
