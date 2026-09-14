cask "font-smooch-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/smoochsans/SmoochSans%5Bwght%5D.ttf"
  name "Smooch Sans"
  homepage "https://fonts.google.com/specimen/Smooch+Sans"

  font "SmoochSans[wght].ttf"

  # No zap stanza required
end
