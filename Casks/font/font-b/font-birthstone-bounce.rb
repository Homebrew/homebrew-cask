cask "font-birthstone-bounce" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/birthstonebounce"
  name "Birthstone Bounce"
  desc "Sibling family of birthstone that adds more luster and playfulness to it"
  homepage "https://fonts.google.com/specimen/Birthstone+Bounce"

  font "BirthstoneBounce-Medium.ttf"
  font "BirthstoneBounce-Regular.ttf"

  # No zap stanza required
end
