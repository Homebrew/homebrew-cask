cask "font-new-tegomin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/newtegomin/NewTegomin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "New Tegomin"
  homepage "https://fonts.google.com/specimen/New+Tegomin"

  font "NewTegomin-Regular.ttf"

  # No zap stanza required
end
