cask "middleclick" do
  version "2.6.1"
  sha256 "6f351cbc0fe2bf32526e691dfae50eea71a679a7f52ecd155fd453d8684ab175"

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
