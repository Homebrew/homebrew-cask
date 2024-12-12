cask "elan" do
  arch arm: "_M1"

  version "6.9"
  sha256 arm:   "3fb29d26db2627d4a326570603f785f472dcd7f9b810203e68b7dbf3d17e38f7",
         intel: "26d60d433f802927494e7fbd78a16dc0a7b8302577c5965ff59beae25f0953d2"

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}#{arch}_mac.zip"
  name "ELAN"
  desc "Annotation tool for audio and video recordings"
  homepage "https://archive.mpi.nl/tla/elan"

  livecheck do
    url "https://archive.mpi.nl/tla/elan/download"
    regex(/href=.*?ELAN[._-]v?(\d+(?:-\d+)+)#{arch}[._-]mac\.zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1].tr("-", ".")
    end
  end

  depends_on macos: ">= :high_sierra"

  app "ELAN_#{version}.app"

  zap trash: [
    "~/Library/Preferences/ELAN",
    "~/Library/Preferences/nl.mpi.elan.plist",
  ]
end
