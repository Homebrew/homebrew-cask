cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "149dbb763a20c1f5a6e4831ee7180315f9d182c797f2221a0c4d03dacc42f640",
         intel: "647d9f285e3cc0d68ce9e8eee4f2207c595b730c0c70c12a572fc53eb9443e87"

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
