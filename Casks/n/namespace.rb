cask "namespace" do
  version "1.0"
  sha256 "b7fdf24b47b997e57f469d93cf3e9af26004d318eb65a4d73bb9423aa0de8b83"

  url "https://github.com/AduroIdea/NameSpace/releases/download/v#{version}/NameSpace-#{version}.dmg"
  name "NameSpace"
  desc "Name your desktops and switch between them from the menu bar"
  homepage "https://github.com/AduroIdea/NameSpace"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NameSpace.app"

  zap trash: "~/Library/Preferences/com.ivanhofer.NameSpace.plist"
end
