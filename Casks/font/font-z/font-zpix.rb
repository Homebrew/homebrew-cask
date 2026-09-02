cask "font-zpix" do
  version "3.2.0"
  sha256 "fb18664ac66d1c6f09c2663b4c1a049f9a00e678f12bfc1c080679aa8e4951d4"

  url "https://github.com/SolidZORO/zpix-pixel-font/releases/download/v#{version}/zpix.ttf"
  name "Zpix"
  homepage "https://zpix.vercel.app/"

  font "zpix.ttf"

  # No zap stanza required
end
