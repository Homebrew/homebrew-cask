cask "brackets" do
  version "2.1.3"
  sha256 "ccc81a56dab275e45674d29a53012c9a20ccd8163c75701b2360be4a4a83e216"

  url "https://github.com/brackets-cont/brackets/releases/download/v#{version}/brackets.#{version}.dmg",
      verified: "github.com/brackets-cont/brackets/"
  name "Brackets"
  desc "Open-source code editor for web-developement"
  homepage "https://brackets.io/"

  livecheck do
    url :homepage
    regex(/brackets\.(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Brackets.app"

  zap trash: [
    "~/Library/Application Support/Brackets",
    "~/Library/Preferences/io.brackets.appshell.plist",
  ]
end
