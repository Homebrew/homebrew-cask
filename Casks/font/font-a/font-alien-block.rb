cask "font-alien-block" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alienblock/AlienBlock-Regular.ttf"
  name "Alien Block"
  homepage "https://github.com/koci-design/AlienBlock"

  font "AlienBlock-Regular.ttf"

  # No zap stanza required
end
