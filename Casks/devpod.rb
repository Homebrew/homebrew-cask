cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "c7874fa63a86db12788f21488295b00389032bedcd281e2b34f02d285db93eda",
         intel: "54ae104a2829180fa44ab9300177c81aa0021c5f62ec1f29c41d4eb7121f58ff"

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
