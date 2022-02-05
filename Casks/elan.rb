cask "elan" do
  version "6.3"
  sha256 "ee0948e20013f79d058a344f360edcd88d95cec57207eebc267aa80512db430b"

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
end
