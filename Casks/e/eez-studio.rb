cask "eez-studio" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.27.1"
  sha256 arm:   "bf083a48d0167ab4203a51f55318ae1690b77be598868751c37a7dad0d4966a0",
         intel: "467c4b08154b3cdb326235ae2ac3d601604f0c6c07425d47b9c6c91c43806d99"

  url "https://github.com/eez-open/studio/releases/download/v#{version}/EEZ.Studio-#{version}-#{arch}.zip",
      verified: "github.com/eez-open/studio/"
  name "EEZ Studio"
  desc "Visual tool for GUI development and T&M automation"
  homepage "https://www.envox.eu/studio/studio-introduction/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "EEZ Studio.app"

  zap trash: "~/Library/Application Support/eezstudio"
end
