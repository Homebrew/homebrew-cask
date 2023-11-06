cask "elan" do
  version "6.7"
  sha256 "2cc2042c1a3aeca577984c1ae2b542af92ff5a8b36bc0b2ae448e57f563a019c"

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
