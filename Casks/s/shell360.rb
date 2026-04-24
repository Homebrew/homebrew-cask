cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.19"
  sha256 arm:   "3453b7264c20732ee80feede0eba7ca12e4bd262d469af643afb2c6d180281a3",
         intel: "66416b642973f6329a8ddf9b8446d41185e3600c9d526743050e82e5c4c96160"

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
