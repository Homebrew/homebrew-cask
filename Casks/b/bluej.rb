cask "bluej" do
  version "5.3.0"
  sha256 "6e511c13ec50a2e37c03521f28c1310d70424dbbff6f635d1ece2ac16c92dc9a"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.dmg"
  name "BlueJ"
  desc "Java Development Environment designed for beginners"
  homepage "https://www.bluej.org/"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "BlueJ.app"

  zap trash: "~/Library/Preferences/org.bluej"
end
