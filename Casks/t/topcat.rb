cask "topcat" do
  version "4.10-8"
  sha256 "bb4f2bd8447c6a09f4799f9149cfd993618e84f62de8997c85ddf131fb85b07c"

  url "https://www.star.bristol.ac.uk/mbt/releases/topcat/v#{version}/topcat-all.dmg"
  name "TOPCAT"
  desc "Interactive graphical viewer and editor for tabular data"
  homepage "https://www.star.bristol.ac.uk/mbt/topcat/"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)*(?:-\d+)?)\s*released/i)
  end

  depends_on :macos

  app "TOPCAT.app"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/app/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/app/stilts"

  # No zap stanza required
end
