cask "font-meslo-lg-dz" do
  version "1.2.1"
  sha256 "e5201a6816281872c23a2b2f43ac91dc8c1f9d91e9f4b82d64e9bfcb769ecb52"

  url "https://github.com/andreberg/Meslo-Font/raw/master/dist/v#{version}/Meslo%20LG%20DZ%20v#{version}.zip"
  name "Meslo LG DZ"
  homepage "https://github.com/andreberg/Meslo-Font"

  font "Meslo LG DZ v#{version}/MesloLGLDZ-Bold.ttf"
  font "Meslo LG DZ v#{version}/MesloLGLDZ-BoldItalic.ttf"
  font "Meslo LG DZ v#{version}/MesloLGLDZ-Italic.ttf"
  font "Meslo LG DZ v#{version}/MesloLGLDZ-Regular.ttf"
  font "Meslo LG DZ v#{version}/MesloLGMDZ-Bold.ttf"
  font "Meslo LG DZ v#{version}/MesloLGMDZ-BoldItalic.ttf"
  font "Meslo LG DZ v#{version}/MesloLGMDZ-Italic.ttf"
  font "Meslo LG DZ v#{version}/MesloLGMDZ-Regular.ttf"
  font "Meslo LG DZ v#{version}/MesloLGSDZ-Bold.ttf"
  font "Meslo LG DZ v#{version}/MesloLGSDZ-BoldItalic.ttf"
  font "Meslo LG DZ v#{version}/MesloLGSDZ-Italic.ttf"
  font "Meslo LG DZ v#{version}/MesloLGSDZ-Regular.ttf"

  # No zap stanza required
end
