cask "font-new-rocker" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/newrocker/NewRocker-Regular.ttf"
  name "New Rocker"
  homepage "https://fonts.google.com/specimen/New+Rocker"

  font "NewRocker-Regular.ttf"

  # No zap stanza required
end
