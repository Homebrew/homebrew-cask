cask "topcat" do
  version "4.10-4"
  sha256 "71a693a0d0fe751d17e78e805c29878b52c5823f1392772ebe663c570cd57f35"

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
