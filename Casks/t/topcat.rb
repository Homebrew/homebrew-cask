cask "topcat" do
  version "4.9-1"
  sha256 "2a5c2d2a69631520c5ef84e414f660fe9c7315467dccab0e2b81c12306fde2fb"

  url "https://www.star.bristol.ac.uk/mbt/releases/topcat/v#{version}/topcat-all.dmg"
  name "TOPCAT"
  desc "Interactive graphical viewer and editor for tabular data"
  homepage "https://www.star.bristol.ac.uk/mbt/topcat/"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)*(?:-\d+)?)\s*released/i)
  end

  app "TOPCAT.app"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/app/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/app/stilts"

  # No zap stanza required
end
