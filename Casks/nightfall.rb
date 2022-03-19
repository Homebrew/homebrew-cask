cask "nightfall" do
  version "3.0.0"
  sha256 "94ef109e272ea578e8a92ef0719f17c53e960eb65826e5594986d463ed682ef5"

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
