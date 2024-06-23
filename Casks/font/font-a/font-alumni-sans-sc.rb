cask "font-alumni-sans-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/alumnisanssc"
  name "Alumni Sans SC"
  homepage "https://github.com/googlefonts/alumni"

  font "AlumniSansSC-Italic[wght].ttf"
  font "AlumniSansSC[wght].ttf"

  # No zap stanza required
end
