cask "font-zpix" do
  version "3.3.0"
  sha256 "a67917d94bb597acbdf3bfe1cf97047cc3e1cdd3839d21da188e35cc0737e828"

  url "https://github.com/SolidZORO/zpix-pixel-font/releases/download/v#{version}/zpix.ttf"
  name "Zpix"
  homepage "https://zpix.vercel.app/"

  font "zpix.ttf"

  # No zap stanza required
end
