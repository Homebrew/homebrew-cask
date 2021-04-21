cask "appstudio" do
  version "8.4.2.0"
  sha256 "f6500de4c4d34625b4892397070d4f752a407ab213b8282554140742024f2719"

  url "https://appstudio.us-east-1.linodeobjects.com/AppStudio#{version.major}.dmg",
      verified: "appstudio.us-east-1.linodeobjects.com/"
  appcast "https://www.nsbasic.com/app/version.json"
  name "NSB/AppStudio"
  desc "Development environment"
  homepage "https://www.nsbasic.com/"

  app "AppStudio.app"
end
