cask "openlens" do
  arch arm: "-arm64"

  version "6.5.2-309"
  sha256 arm:   "e4def8aaae0036cef24647bcda4d62546114ee6b7ce23b5900f174b8ec422602",
         intel: "e5344ed6f97559df402d25af2417e39d6479a44187393c321f801b4bd47b7ef0"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
