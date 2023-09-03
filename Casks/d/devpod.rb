cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.7"
  sha256 arm:   "c8e03f04e2d1a0f5a42118989d69f33183e694a6bf071e1fe3defbb484cfebed",
         intel: "9a0cbbe9e7b6e75760d4a739b5855d31eaeb4444e21d13cb8f5155393a04ac32"

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
