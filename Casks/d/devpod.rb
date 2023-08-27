cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.5"
  sha256 arm:   "44e39b1f8f7538680216fa55f8375015a82e526bd7e059928ecf95f77b7d56c1",
         intel: "6aa0a5366642612520e6a34d0b4707f731730105ee1702a7a2c06a4ed8a46bc2"

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
