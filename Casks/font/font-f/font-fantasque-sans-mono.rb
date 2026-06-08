cask "font-fantasque-sans-mono" do
  version "1.8.0"
  sha256 "84be689e231ff773ed9d352e83dccd8151d9e445f1cb0b88cb0e9330fc4d9cfc"

  url "https://github.com/belluzj/fantasque-sans/releases/download/v#{version}/FantasqueSansMono-Normal.zip"
  name "Fantasque Sans Mono"
  homepage "https://github.com/belluzj/fantasque-sans"

  font "OTF/FantasqueSansMono-Bold.otf"
  font "OTF/FantasqueSansMono-BoldItalic.otf"
  font "OTF/FantasqueSansMono-Italic.otf"
  font "OTF/FantasqueSansMono-Regular.otf"

  # No zap stanza required
end
