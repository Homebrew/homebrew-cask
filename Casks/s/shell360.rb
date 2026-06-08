cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "4ae7077e5108b6041baa3eb8d921a120026c69c498cb37c33f4c22ac9c25392f",
         intel: "f334fe1884b4c3f2c831745e506be7eaf077066abf1fccfa85298ea90f0a73e0"

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
