cask "font-sorts-mill-goudy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sortsmillgoudy"
  name "Sorts Mill Goudy"
  homepage "https://fonts.google.com/specimen/Sorts+Mill+Goudy"

  font "SortsMillGoudy-Italic.ttf"
  font "SortsMillGoudy-Regular.ttf"

  # No zap stanza required
end
