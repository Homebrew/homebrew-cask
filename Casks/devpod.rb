cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.10"
  sha256 arm:   "e213324a0e0b9b2680d75ba2b5a56e9586bbc59bae7b5c468de6f52bec95ee9b",
         intel: "559b8fececea0401a2772afb5c5fae44badfe90940a7873b4b0aecda7d2d32b8"

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
