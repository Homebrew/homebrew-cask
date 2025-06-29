cask "font-libertinus-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/libertinussans"
  name "Libertinus Sans"
  homepage "https://github.com/googlefonts/libertinus"

  font "LibertinusSans-Bold.ttf"
  font "LibertinusSans-Italic.ttf"
  font "LibertinusSans-Regular.ttf"

  # No zap stanza required
end
