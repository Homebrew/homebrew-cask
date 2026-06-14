cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "ce68b66004b66da2ae95236b01ea36fa130f7fa88e488d8a88c94029649e5541",
         intel: "5b85c93eb665b169006318a4504aba9be38de3dfdeaf3723e864b04d79dbf101"

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
