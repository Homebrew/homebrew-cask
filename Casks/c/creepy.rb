cask "creepy" do
  version "1.4.1"
  sha256 "c500216420cb32b7779f20726bc838868c4424d234b9dc7f076d083b317b5450"

  url "https://github.com/jkakavas/creepy/releases/download/v#{version}/cree.py_#{version}.dmg.zip",
      verified: "github.com/jkakavas/creepy/"
  name "Creepy"
  desc "Geolocation OSINT tool"
  homepage "https://www.geocreepy.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "cree.py.app"

  zap trash: "~/.creepy"
end
