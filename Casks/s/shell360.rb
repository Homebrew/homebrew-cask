cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.17"
  sha256 arm:   "4f1afeca26e8935c598e4f0fc29636c51afdb458558bc853586d66a23ceb4c73",
         intel: "57e92de449fc854a64482e49491594dc955f095bff6bc3adc1fe5fd25105c9b3"

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
