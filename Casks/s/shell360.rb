cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "8729fb43a8522bdeb11bffea19850f94c49acb99957b96e4cb65e084bf0fd8e7",
         intel: "26a10aa6f07c13ed33b973380bc7ca154cc5a0c736c9955f88366667af3393a3"

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
