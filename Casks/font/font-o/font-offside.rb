cask "font-offside" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/offside/Offside-Regular.ttf"
  name "Offside"
  homepage "https://fonts.google.com/specimen/Offside"

  font "Offside-Regular.ttf"

  # No zap stanza required
end
