cask "doughnut" do
  version "1.1.1,58"
  sha256 "e50a64f6325bc88378f04848213ff745360d6a84a7533e7ad93b5abe53015ba9"

  url "https://github.com/dyerc/Doughnut/releases/download/v#{version.before_comma}/Doughnut-#{version.before_comma}.dmg"
  name "Doughnut"
  desc "Podcast client (podcatcher)"
  homepage "https://github.com/dyerc/Doughnut"

  livecheck do
    url "https://raw.githubusercontent.com/dyerc/Doughnut/master/appcast.xml"
    strategy :sparkle
  end

  # depends_on macos: ">= :catalina"

  app "Doughnut.app"

  zap trash: [
    "~/Library/Preferences/com.cdyer.doughnut.plist",
    "~/Music/Doughnut",
  ]
end
