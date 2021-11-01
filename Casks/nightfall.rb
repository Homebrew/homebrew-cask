cask "nightfall" do
  version "2.1.3"
  sha256 "0d02098817e465c15721381641f4cf271cf2fee2956369eefe14bd4bd82f7ee6"

  url "https://github.com/r-thomson/Nightfall/releases/download/v#{version}/Nightfall.dmg"
  name "Nightfall"
  desc "Menu bar utility for toggling dark mode"
  homepage "https://github.com/r-thomson/Nightfall/"

  depends_on macos: ">= :catalina"

  app "Nightfall.app"

  zap trash: [
    "~/Library/Application Scripts/com.ryanthomson.Nightfall",
    "~/Library/Containers/com.ryanthomson.Nightfall",
  ]
end
