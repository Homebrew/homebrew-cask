cask "tic80" do
  # NOTE: "80" is not a version number, but an intrinsic part of the product name
  version "1.0.2164"
  sha256 "343b5f75827dd4cb3f5e7dfa2809e9f68b02d64bf601694acef0b08aafd5f230"

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
