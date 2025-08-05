cask "elan" do
  arch arm: "_M1"

  version "7.0"
  sha256 arm:   "ee067b519482f64dda66f082b0e6ad38315bca0c47d0f5166ced9ca5cd999be6",
         intel: "ec2661cc727e7857150b1fb159338711e0b4addfd133a75e6d0dc69b8e643543"

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

  app "ELAN_#{version.dots_to_hyphens}#{arch}_mac/ELAN_#{version}.app"

  zap trash: [
    "~/Library/Preferences/ELAN",
    "~/Library/Preferences/nl.mpi.elan.plist",
  ]
end
