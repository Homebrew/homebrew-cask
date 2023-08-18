cask "tic80" do
  # NOTE: "80" is not a version number, but an intrinsic part of the product name
  version "1.1.2729"
  sha256 "f53c64ab31cc0de21d944c2fee46bec35db37637113cd9ecc214379a74d79ef5"

  url "https://github.com/nesbox/TIC-80/releases/download/v#{version}/tic80-v#{version.major_minor}-mac.dmg",
      verified: "github.com/nesbox/TIC-80/"
  name "TIC-80"
  desc "Fantasy computer for making, playing and sharing tiny games"
  homepage "https://tic80.com/"

  app "tic80.app"

  uninstall quit: "com.nesbox.tic"

  zap trash: [
    "~/Library/Application Support/com.nesbox.tic",
    "~/Library/Saved Application State/com.nesbox.tic.savedState",
  ]
end
