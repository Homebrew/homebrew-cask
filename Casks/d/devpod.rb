cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "4486b5ab298a78261f8163f5e6f186e96cc651108bab477964f548bb113a3d53",
         intel: "66ab29685fc80dd6bafe6568ca1f0e1c0ff5fd1638aa86dea1d70c7470e2d570"

  url "https://github.com/loft-sh/devpod/releases/download/v#{version}/DevPod_macos_#{arch}.dmg",
      verified: "github.com/loft-sh/devpod/"
  name "DevPod"
  desc "UI to create reproducible developer environments based on a devcontainer.json"
  homepage "https://devpod.sh/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DevPod.app"

  zap trash: "~/.devpod"
end
