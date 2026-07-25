cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "52ac73160ae0605f48aae9e9cee3e6a5a722f5ee56d8a27122664610e3f6523f",
         intel: "06907da037a3114e4c652c25bd7f06cec296432cdf4f070ce1e0c46b6f275a26"

  url "https://github.com/nashaofu/shell360/releases/download/v#{version}/Shell360_#{version}_#{arch}.dmg"
  name "Shell360"
  desc "Cross-platform SSH & SFTP client"
  homepage "https://github.com/nashaofu/shell360"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on :macos

  app "Shell360.app"

  zap trash: [
    "~/Library/Application Support/com.nashaofu.shell360",
    "~/Library/Webkit/com.nashaofu.shell360",
  ]
end
