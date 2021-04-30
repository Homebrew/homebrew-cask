cask "elan" do
  version "6.1"
  sha256 "f3be27807cd30fdf8d2ca325e9b8a5848eb1daf51685a946c268f2720af1db72"

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  name "ELAN"
  desc "Annotation tool for audio and video recordings"
  homepage "https://archive.mpi.nl/tla/elan"

  livecheck do
    url "https://archive.mpi.nl/tla/elan/download"
    strategy :page_match do |page|
      v = page[%r{href=.*?/ELAN_(\d+(?:-\d+)*)_mac\.zip}i, 1]
      v.tr("-", ".")
    end
  end

  depends_on macos: ">= :high_sierra"

  app "ELAN_#{version}.app"
end
