cask "middleclick" do
  version "3.3.1"
  sha256 "475e5e62aa1bf23702f3655ac1b9e92fe79cd3481b2ff37c912df7b79e3d5923"

  url "https://github.com/artginzburg/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  name "MiddleClick"
  desc "Utility to extend trackpad functionality"
  homepage "https://github.com/artginzburg/MiddleClick"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "MiddleClick.app"

  uninstall quit:       "art.ginzburg.MiddleClick",
            login_item: "MiddleClick"

  zap trash: "~/Library/Preferences/art.ginzburg.MiddleClick.plist"
end
