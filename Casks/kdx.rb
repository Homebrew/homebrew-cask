cask "kdx" do
  version "2.10.12"
  sha256 "077c9c8dd06c91ea27d1165bbc98bf020a27ad3a8b7b6f308dede41b483d87a8"

  url "https://kdx.app/downloads/kdx-v#{version}-darwin-x64.dmg"
  name "KDX"
  desc "Desktop process manager for Kaspa node"
  homepage "https://kdx.app/"

  livecheck do
    skip "TODO: Add livecheck"
  end

  app "kdx.app"
end
