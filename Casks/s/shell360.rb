cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "3ad5aaa08d2bef7611be9c895ad19446b1a0807aed78973273ded726dd6a8649",
         intel: "4963d882460df18424dd6f595b4bb0f8ad457a9d793d76384159cec0fde1d00f"

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
