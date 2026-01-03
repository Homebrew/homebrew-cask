cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.16"
  sha256 arm:   "8a7958f261f83d3e4f53554b467f5d89fb7e1824d08fee5c3b79cdd2f92dffe1",
         intel: "cc13c5000a4c847ac372e85b77926d71f8dc5883fbd50e23b9ad788549355838"

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
