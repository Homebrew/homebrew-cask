cask "elan" do
  version "6.6"
  sha256 "02a49227444290d4d2e3838bf46044e9271dfc028840b62d232abcc8b6c70e4a"

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
end
