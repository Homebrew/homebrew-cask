cask "middleclick" do
  version "2.7"
  sha256 "c5a98a652d880878452d8827630cf7a7266ce588edb5cf7b1cda5686f5ae71f3"

  url "https://github.com/artginzburg/MiddleClick-Sonoma/releases/download/#{version}/MiddleClick.zip"
  name "MiddleClick"
  desc "Utility to extend trackpad functionality"
  homepage "https://github.com/artginzburg/MiddleClick-Sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MiddleClick.app"

  uninstall quit:       "com.rouge41.middleClick",
            login_item: "MiddleClick"

  zap trash: "~/Library/Preferences/com.rouge41.middleClick.plist"
end
