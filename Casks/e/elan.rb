cask "elan" do
  version "6.8"
  sha256 "ef487113e6498f20def9c1feea78b64c4611066b7cce3a12772324c39e7f8b87"

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  name "ELAN"
  desc "Annotation tool for audio and video recordings"
  homepage "https://archive.mpi.nl/tla/elan"

  livecheck do
    url "https://archive.mpi.nl/tla/elan/download"
    strategy :page_match do |page|
      v = page[/href=.*?ELAN[._-]v?(\d+(?:-\d+)+)[._-]mac\.zip/i, 1]
      next if v.blank?

      v.tr("-", ".")
    end
  end

  depends_on macos: ">= :high_sierra"

  app "ELAN_#{version}.app"

  zap trash: [
    "~/Library/Preferences/ELAN",
    "~/Library/Preferences/nl.mpi.elan.plist",
  ]

  caveats do
    requires_rosetta
  end
end
