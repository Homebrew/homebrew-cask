cask "font-rampart-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rampartone/RampartOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rampart One"
  homepage "https://fonts.google.com/specimen/Rampart+One"

  font "RampartOne-Regular.ttf"

  # No zap stanza required
end
