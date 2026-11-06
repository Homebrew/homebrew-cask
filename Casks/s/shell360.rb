cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "5bd7bdfc5a4dd7127de132033aed0923fa4a941c02fc2b57fa2fa52e47ebbb2e",
         intel: "05419aaf7e49115f9f36c7614eb3f1d28190b69a7ae0694d36a03de6a2e2fee2"

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
