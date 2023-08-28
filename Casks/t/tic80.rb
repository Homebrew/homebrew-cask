cask "tic80" do
  # NOTE: "80" is not a version number, but an intrinsic part of the product name
  version "1.1.2736"
  sha256 "747a819bd7fddbbac7f3a03e579be5d4ee7af6c4d1b9e34601738cb3eda04043"

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
