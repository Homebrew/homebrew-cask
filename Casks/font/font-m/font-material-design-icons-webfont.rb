cask "font-material-design-icons-webfont" do
  version :latest
  sha256 :no_check

  url "https://github.com/templarian/materialdesign-webfont.git",
      verified:  "github.com/templarian/materialdesign-webfont",
      branch:    "master",
      only_path: "fonts"
  name "Material Design Icons Webfont"
  homepage "https://materialdesignicons.com/"

  font "materialdesignicons-webfont.ttf"

  # No zap stanza required
end
