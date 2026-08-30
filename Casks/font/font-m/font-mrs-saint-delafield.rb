cask "font-mrs-saint-delafield" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrssaintdelafield/MrsSaintDelafield-Regular.ttf"
  name "Mrs Saint Delafield"
  homepage "https://fonts.google.com/specimen/Mrs+Saint+Delafield"

  font "MrsSaintDelafield-Regular.ttf"

  # No zap stanza required
end
