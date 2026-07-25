cask "topcat" do
  version "4.10-7"
  sha256 "d02d23a7f27cc22c30f8fd6e6a4e188e31f12a7f68ff2ad3a8aa23d4e1506a4e"

  url "https://www.star.bristol.ac.uk/mbt/releases/topcat/v#{version}/topcat-all.dmg"
  name "TOPCAT"
  desc "Interactive graphical viewer and editor for tabular data"
  homepage "https://www.star.bristol.ac.uk/mbt/topcat/"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)*(?:-\d+)?)\s*released/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "TOPCAT.app"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/app/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/app/stilts"

  # No zap stanza required
end
