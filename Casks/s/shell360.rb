cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "f86d16b35d8e41ca34365d65fa93989bee86ce98e37c2c136d7529f482ec91d0",
         intel: "41b119d80a078d51625232955069b26fa8141449ee6d9f263636b1ba4e5f603a"

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
