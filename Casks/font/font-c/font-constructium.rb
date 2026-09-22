cask "font-constructium" do
  version "2026-09-21"
  sha256 "9605d045434a557672d1bf97eb8574828a28dd811b6b0d4da3d0b8334fb27774"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/Constructium.zip"
  name "Constructium"
  homepage "https://www.kreativekorp.com/software/fonts/constructium/"

  font "Constructium.ttf"

  # No zap stanza required
end
