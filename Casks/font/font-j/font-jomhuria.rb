cask "font-jomhuria" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jomhuria/Jomhuria-Regular.ttf"
  name "Jomhuria"
  homepage "https://fonts.google.com/specimen/Jomhuria"

  font "Jomhuria-Regular.ttf"

  # No zap stanza required
end
