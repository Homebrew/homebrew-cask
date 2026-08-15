cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.8.7"
  sha256 arm:   "468459950d259bede43241ade0be8efff203f5b0448ee835db20a38879d57058",
         intel: "eb07fbd706c21ec90c2fba898645c4802e43cbf15e22238986e3e14858f11827"

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

  app "Rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
