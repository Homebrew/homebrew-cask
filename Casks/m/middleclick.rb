cask "middleclick" do
  version "3.0.0"
  sha256 "e80bc000bc8370349c83648307f5443dfa3e7cac3f67faaad589bceebec9fc33"

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
