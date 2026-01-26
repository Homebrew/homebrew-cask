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

  # The url is unversioned, but the download returns an app directory with a version number
  rename "GPlates_*", "Gplates"

  app "GPlates/gplates.app"

  zap trash: [
    "~/Library/Application Support/GPlates",
    "~/Library/Preferences/org.gplates.GPlates.plist",
    "~/Library/Saved Application State/GPlates*.savedState",
  ]
end
