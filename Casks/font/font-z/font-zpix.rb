cask "font-zpix" do
  version "3.1.9"
  sha256 "d8a830e19aacfe989b7d0de45f050657e83b1840ccbab0f8600a5352dbacf9e3"

  url "https://github.com/SolidZORO/zpix-pixel-font/releases/download/v#{version}/zpix.ttf",
      verified: "github.com/SolidZORO/zpix-pixel-font/"
  name "Zpix"
  homepage "https://zpix.vercel.app/"

  font "zpix.ttf"

  # No zap stanza required
end
