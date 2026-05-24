cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.21"
  sha256 arm:   "d34e134d2507baa1417cc8a20c1af4a25cda0674084f965e4ff98d32cea2987a",
         intel: "0db7e49e6da7db740d146a4dd96c4f475bfe3fc2086f1d796ca57fd72c9bdbc0"

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
