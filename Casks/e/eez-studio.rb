cask "eez-studio" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.28.0"
  sha256 arm:   "89d2f2a04e2a48e3787aa9ff4dc73be2a7d9300ba655d3e5e87eb3f9bbb55eb6",
         intel: "49a9dc96279a181cfe969bdd0441f2d2db6e849bce53da2c6b2799f01d4b05be"

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
