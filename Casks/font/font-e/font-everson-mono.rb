cask "font-everson-mono" do
  version "7.0.0"
  sha256 :no_check

  url "https://www.evertype.com/emono/evermono.zip"
  name "Everson Mono"
  homepage "https://www.evertype.com/emono/"

  font "evermono-#{version}/Everson Mono.ttf"
  font "evermono-#{version}/Everson Mono Bold.ttf"
  font "evermono-#{version}/Everson Mono Bold Oblique.ttf"
  font "evermono-#{version}/Everson Mono Oblique.ttf"

  # No zap stanza required
end
