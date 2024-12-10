cask "oscar" do
  version "1.6.0"
  sha256 "79b005dde8dcd9cc39edefa83f54e937b6ca2be7645b7ad4a98fe6c22f816540"

  url "https://www.apneaboard.com/OSCAR/#{version}/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "OSCAR.app"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
