cask "font-amiri" do
  version "1.003"
  sha256 "81af0aff7d2086d8af24cea7202f7546130997982534691373485cd96744d05e"

  url "https://github.com/alif-type/amiri/releases/download/#{version}/Amiri-#{version}.zip",
      verified: "github.com/alif-type/amiri/"
  name "Amiri"
  homepage "https://www.amirifont.org/"

  font "Amiri-#{version}/Amiri-Bold.ttf"
  font "Amiri-#{version}/Amiri-BoldItalic.ttf"
  font "Amiri-#{version}/Amiri-Italic.ttf"
  font "Amiri-#{version}/Amiri-Regular.ttf"
  font "Amiri-#{version}/AmiriQuran.ttf"
  font "Amiri-#{version}/AmiriQuranColored.ttf"

  # No zap stanza required
end
