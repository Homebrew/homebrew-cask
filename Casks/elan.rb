cask "elan" do
  version "6.2"
  sha256 "bca954c66e6390e4bb2bdadea046eb165be231083c298558c1b29adaead587dc"

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
