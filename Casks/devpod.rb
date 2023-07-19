cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "8f3cf86349d94521545ac3c58d95f80a5809f9bcd53ad34601fd13ba7633836f",
         intel: "6c85e4a2042d28e365e48f6d219903e8d956ef88a6ea4b62d493ebeab8d24e5d"

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
