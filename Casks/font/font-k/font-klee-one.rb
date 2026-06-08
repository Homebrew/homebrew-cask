cask "font-klee-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kleeone"
  name "Klee One"
  homepage "https://fonts.google.com/specimen/Klee+One"

  font "KleeOne-Regular.ttf"
  font "KleeOne-SemiBold.ttf"

  # No zap stanza required
end
