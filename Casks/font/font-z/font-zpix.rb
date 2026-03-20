cask "font-zpix" do
  version "3.1.11"
  sha256 "ed39f02845e8c0b8cdba275432250fb03e8528826f058bc151753bd62b44b744"

  url "https://github.com/SolidZORO/zpix-pixel-font/releases/download/v#{version}/zpix.ttf",
      verified: "github.com/SolidZORO/zpix-pixel-font/"
  name "Zpix"
  homepage "https://zpix.vercel.app/"

  font "zpix.ttf"

  # No zap stanza required
end
