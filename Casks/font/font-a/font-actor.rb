cask "font-actor" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/actor/Actor-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Actor"
  homepage "https://fonts.google.com/specimen/Actor"

  font "Actor-Regular.ttf"

  # No zap stanza required
end
