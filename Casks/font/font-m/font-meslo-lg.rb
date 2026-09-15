cask "font-meslo-lg" do
  version "1.2.1"
  sha256 "d0bcb7668dda8fa1a0f8162d626adb434c32854e243b5bd52a717cf569af08d0"

  url "https://github.com/andreberg/Meslo-Font/raw/master/dist/v#{version}/Meslo%20LG%20v#{version}.zip"
  name "Meslo LG"
  homepage "https://github.com/andreberg/Meslo-Font"

  font "Meslo LG v#{version}/MesloLGL-Bold.ttf"
  font "Meslo LG v#{version}/MesloLGL-BoldItalic.ttf"
  font "Meslo LG v#{version}/MesloLGL-Italic.ttf"
  font "Meslo LG v#{version}/MesloLGL-Regular.ttf"
  font "Meslo LG v#{version}/MesloLGM-Bold.ttf"
  font "Meslo LG v#{version}/MesloLGM-BoldItalic.ttf"
  font "Meslo LG v#{version}/MesloLGM-Italic.ttf"
  font "Meslo LG v#{version}/MesloLGM-Regular.ttf"
  font "Meslo LG v#{version}/MesloLGS-Bold.ttf"
  font "Meslo LG v#{version}/MesloLGS-BoldItalic.ttf"
  font "Meslo LG v#{version}/MesloLGS-Italic.ttf"
  font "Meslo LG v#{version}/MesloLGS-Regular.ttf"

  # No zap stanza required
end
