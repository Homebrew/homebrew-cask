cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.0_924"
  sha256 arm:   "beb2bc4570b402056d9d6f4c73b78d06bfba4bc2e5e9f8aa68d16a9e9c06018c",
         intel: "c581b59f0037cd4d4d14ef432f1ec6b4ca5683e5fe19aca665f7050c851ede2a"

  url "https://cdn-updates.orbstack.dev/amd64/OrbStack_v#{version}_#{arch}.dmg"
  name "OrbStack"
  desc "Replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  livecheck do
    url "https://orbstack.dev/download/beta/latest/#{arch}"
    regex(/OrbStack[._-]v?(\d+(?:[._-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  app "OrbStack.app"

  zap trash: "~/.orbstack"
end
