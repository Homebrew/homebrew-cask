cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "a3f63f90a767f64a43ef9d901cd726b24c161303d9739130a4f056ae9f2b8a4c",
         intel: "decd53ab97f6972211a2baa3a53384e311c347e7520aa3b999cd739a79719026"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  depends_on macos: ">= :monterey"

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
