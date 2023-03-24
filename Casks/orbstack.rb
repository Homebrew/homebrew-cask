cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "v0.5.0_924"
  sha256 arm:   "beb2bc4570b402056d9d6f4c73b78d06bfba4bc2e5e9f8aa68d16a9e9c06018c",
         intel: "c581b59f0037cd4d4d14ef432f1ec6b4ca5683e5fe19aca665f7050c851ede2a"

  url "https://cdn-updates.orbstack.dev/#{arch}/OrbStack_#{version}_#{arch}.dmg"
  name "orbstack"
  desc "Run Docker and Linux with this drop-in replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  auto_updates true

  app "OrbStack.app"

  zap trash: "~/.orbstack"
end
