cask "font-huninn" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/huninn/Huninn-Regular.ttf"
  name "Huninn"
  homepage "https://fonts.google.com/specimen/Huninn"

  font "Huninn-Regular.ttf"

  # No zap stanza required
end
