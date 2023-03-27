cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.1_985"
  sha256 arm:   "4040f4484b9b4991ea20c04cdfd7f6609a35f125f326d527466f8d3517bed603",
         intel: "3fdb81b1ed9a34ac5d25940217ee991db0c95a92c4cea70dc098a505a85977b2"

  url "https://cdn-updates.orbstack.dev/#{arch}/OrbStack_v#{version}_#{arch}.dmg"
  name "OrbStack"
  desc "Replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  livecheck do
    url "https://orbstack.dev/download/beta/latest/#{arch}"
    regex(/OrbStack[._-]v?(\d+(?:[._-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "OrbStack.app"

  zap trash: "~/.orbstack"
end
