cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.6"
  sha256 arm:   "9745e271702987c44f12d3e0de8f06b4640e4e1ce3519ed9884fd4293339df71",
         intel: "ee0dab07e09bce65516c3e108b9dea1d1022cf600130e63e7b23e6e489945f13"

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
