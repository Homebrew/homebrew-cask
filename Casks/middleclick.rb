cask "middleclick" do
  version "2.5.0.1"
  sha256 "4aecf835dcc3ccf3936e05e6cde7c3b5fa8e6d00bf9ebba52d3a608d7ba957b0"

  url "https://github.com/artginzburg/MiddleClick-BigSur/releases/download/#{version}/MiddleClick.zip"
  name "MiddleClick"
  desc "Utility to extend trackpad functionality"
  homepage "https://github.com/artginzburg/MiddleClick-BigSur"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MiddleClick.app"

  uninstall login_item: "MiddleClick",
            quit:       "com.rouge41.middleClick"

  zap trash: "~/Library/Preferences/com.rouge41.middleClick.plist"
end
