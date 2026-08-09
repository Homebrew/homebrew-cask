cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "106e3d0646981b278d545010fc13bcaf04991331b442c81be7668e3bc8f13b7b",
         intel: "16cf679a18bc135ba5f695ee0a3100c7ae867125e1d814e78f61e756940be2f6"

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
