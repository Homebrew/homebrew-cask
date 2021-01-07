cask "brackets" do
  version "1.14.2"
  sha256 "716be1a75099079aa1a22dedab403c9839155c4b99aab6677d8a24589f7f9a15"

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg",
      verified: "github.com/adobe/brackets/"
  name "Brackets"
  desc "Open-source code editor for web-developement"
  homepage "http://brackets.io/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Brackets\.Release\.(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Brackets.app"

  zap trash: [
    "~/Library/Application Support/Brackets",
    "~/Library/Preferences/io.brackets.appshell.plist",
  ]
end
