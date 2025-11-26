cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.14"
  sha256 arm:   "a02e0e6818893e0b44997a39827e813b18403088d85d246d7635bc1cc7a04fc0",
         intel: "4b06ab66762be40fe4d0224c0ad597f6c29ac647b89517fdab056dc614f63622"

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
