cask "immichsync" do
  version "1.0.0"
  sha256 "98362755125daf5042acfe27821f33ff48a314112249d967b69cad92c55286ab"

  url "https://github.com/bjoernch/Immichsync/releases/download/v#{version}/ImmichSync.zip",
      verified: "github.com/bjoernch/Immichsync/"
  name "ImmichSync"
  desc "macOS Immich backup and upload sync app"
  homepage "https://github.com/bjoernch/Immichsync"

  app "ImmichSync.app"
end
