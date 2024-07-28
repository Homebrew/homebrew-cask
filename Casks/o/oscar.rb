cask "oscar" do
  version "1.5.3"
  sha256 "24e894bf058867b29bb94edbf7695b86c3705d5fd63efc5e812b41d8d7d369e0"

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
