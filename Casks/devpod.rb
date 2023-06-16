cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "0696c190bd24d956b62c5c24a7fe1c8eba8f856fb9cbe18b91b256d77c3ad1b9",
         intel: "9d2b95ab7b4a06584cb86422b3634a576a067b55b9deb908b42ad6ad65292d8a"

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
