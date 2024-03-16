cask "oscar" do
  version "1.5.2"
  sha256 "fd1a116169d510bb14515d183611fe26eb69ec4b17894ebbf3c1facae21b1749"

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
end
