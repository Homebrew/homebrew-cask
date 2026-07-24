cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "d344c75b48f2c7b8ee5443f44b30b5abd654cfdf2e6eed00a83dc0b4b3a0a43d",
         intel: "2b899bd7099f785e6cc82e9e6b416c291b7ecc40ca256d806bed06ee38e2a686"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
