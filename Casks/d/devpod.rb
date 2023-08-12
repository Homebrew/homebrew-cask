cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "ed76446a47279d21c8e4b091f495d46c26dde56c27b58b514ef6804f28f781de",
         intel: "c3a048db8c5cb3ec0183d936bcc63830410f8821bbd7405739a1a198d1ff9b1a"

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
