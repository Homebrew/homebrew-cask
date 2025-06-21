cask "minitube" do
  version "4.0.3"
  sha256 :no_check

  url "https://flavio.tordini.org/files/minitube/minitube.dmg"
  name "Minitube"
  desc "YouTube application"
  homepage "https://flavio.tordini.org/minitube"

  livecheck do
    url "https://flavio.tordini.org/minitube-ws/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "Minitube.app"

  zap trash: [
    "~/Library/HTTPStorages/org.tordini.flavio.minitube",
    "~/Library/Preferences/org.tordini.flavio.minitube.plist",
    "~/Library/Saved Application State/org.tordini.flavio.minitube.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
