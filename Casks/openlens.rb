cask "openlens" do
  arch arm: "-arm64"

  version "6.2.3"
  sha256 arm:   "a77cb765844295a81c0e5000f10c1271d07f3506cd577bf5ed94671c61075dac",
         intel: "c95def0c10336ae0371670b5f6b14ecdfaa78df04104338b9dcd7c5dfa2cbd2c"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
