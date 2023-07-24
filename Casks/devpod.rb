cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "31ad441aa0463b1e843a0e4c878a1b432df0697cc381c0ae3379bd6aadc1e286",
         intel: "1302cf322a8ea9fcef785f1f7c71d8948fc95ccbd52dc4842273a82cfb97aaea"

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
