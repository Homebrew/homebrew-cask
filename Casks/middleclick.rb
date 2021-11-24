cask "middleclick" do
  version "2.5"
  sha256 "50bb016602e8e792a8a6b53053a4ec4129ca89926a44fc1ac898f3d11102aada"

  url "https://github.com/artginzburg/MiddleClick-BigSur/releases/download/#{version}/MiddleClick.zip"
  name "MiddleClick"
  desc "Utility to extend trackpad functionality"
  homepage "https://github.com/artginzburg/MiddleClick-BigSur"

  app "MiddleClick.app"

  uninstall login_item: "MiddleClick",
            quit:       "com.rouge41.middleClick"

  zap trash: "~/Library/Preferences/com.rouge41.middleClick.plist"
end
