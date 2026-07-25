cask "font-libertinus-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/libertinussans"
  name "Libertinus Sans"
  homepage "https://fonts.google.com/specimen/Libertinus+Sans"

  font "LibertinusSans-Bold.ttf"
  font "LibertinusSans-Italic.ttf"
  font "LibertinusSans-Regular.ttf"

  # No zap stanza required
end
