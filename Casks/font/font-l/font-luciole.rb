cask "font-luciole" do
  version :latest
  sha256 :no_check

  url "https://luciole-vision.com/fonts/Luciole.zip"
  name "Luciole"
  homepage "https://luciole-vision.com/en/"

  font "Luciole/Luciole-BoldItalic.ttf"
  font "Luciole/Luciole-Bold.ttf"
  font "Luciole/Luciole-Italic.ttf"
  font "Luciole/Luciole-Regular.ttf"

  # No zap stanza required
end
