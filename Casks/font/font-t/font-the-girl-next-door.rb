cask "font-the-girl-next-door" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/thegirlnextdoor/TheGirlNextDoor.ttf",
      verified: "github.com/google/fonts/"
  name "The Girl Next Door"
  homepage "https://fonts.google.com/specimen/The+Girl+Next+Door"

  font "TheGirlNextDoor.ttf"

  # No zap stanza required
end
