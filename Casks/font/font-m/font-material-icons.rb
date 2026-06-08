cask "font-material-icons" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/material-design-icons.git",
      verified:  "github.com/google/material-design-icons",
      branch:    "master",
      only_path: "font"
  name "Material Icons"
  homepage "https://google.github.io/material-design-icons/"

  font "MaterialIcons-Regular.ttf"
  font "MaterialIconsOutlined-Regular.otf"
  font "MaterialIconsSharp-Regular.otf"
  font "MaterialIconsTwoTone-Regular.otf"

  # No zap stanza required
end
