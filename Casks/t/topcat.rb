cask "topcat" do
  version "4.10"
  sha256 "0f4b1adb996a01402e8030a03815354da6ff2b7660af101a33b2c5949ef542b8"

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
