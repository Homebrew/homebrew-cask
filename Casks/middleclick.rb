cask "middleclick" do
  version "2.6"
  sha256 "3028062802e7e24a5a7c803c3201e7eb5acbbb57fe4d7fc97893429a94152ec0"

  url "https://github.com/artginzburg/MiddleClick-BigSur/releases/download/#{version}/MiddleClick.zip"
  name "MiddleClick"
  desc "Utility to extend trackpad functionality"
  homepage "https://github.com/artginzburg/MiddleClick-BigSur"

  app "MiddleClick.app"

  uninstall login_item: "MiddleClick",
            quit:       "com.rouge41.middleClick"

  zap trash: "~/Library/Preferences/com.rouge41.middleClick.plist"
end
