cask "font-amiri" do
  version "1.001"
  sha256 "cae999a9fc5638cb69cf0812e8bca1437ef1ebbf094f8b3c5b3f0a3ea2ef8c3a"

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
