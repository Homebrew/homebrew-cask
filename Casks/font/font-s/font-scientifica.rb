cask "font-scientifica" do
  version "2.3"
  sha256 "f0857869a0e846c6f175dcb853dd1f119ea17a75218e63b7f0736d5a8e1e8a7f"

  url "https://github.com/oppiliappan/scientifica/releases/download/v#{version}/scientifica.tar"
  name "Scientifica"
  homepage "https://github.com/oppiliappan/scientifica"

  font "scientifica/ttf/scientifica.ttf"
  font "scientifica/ttf/scientificaBold.ttf"
  font "scientifica/ttf/scientificaItalic.ttf"

  # No zap stanza required
end
