cask "gplates" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "10116", intel: "10118"

  version "2.5.0"
  sha256 :no_check

  url "https://www.earthbyte.org/download/#{livecheck_id}/",
      verified: "earthbyte.org/"
  name "GPlates"
  desc "Plate tectonics program"
  homepage "https://www.gplates.org/"

  livecheck do
    url :url
    regex(/gplates[._-]v?(\d+(?:\.\d+)+)[._-]Darwin[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

  app "GPlates_#{version}/gplates.app"

  zap trash: [
    "~/Library/Application Support/GPlates",
    "~/Library/Preferences/org.gplates.GPlates.plist",
    "~/Library/Saved Application State/GPlates*.savedState",
  ]
end
