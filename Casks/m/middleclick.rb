cask "middleclick" do
  version "3.2.0"
  sha256 "e93f17612a77413c5e7cef9423f0dc9db166d66f38d41d783a990e2ea6ba698c"

  url "https://github.com/artginzburg/MiddleClick/releases/download/#{version}/MiddleClick.zip"
  name "MiddleClick"
  desc "Utility to extend trackpad functionality"
  homepage "https://github.com/artginzburg/MiddleClick"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MiddleClick.app"

  uninstall quit:       "art.ginzburg.MiddleClick",
            login_item: "MiddleClick"

  zap trash: "~/Library/Preferences/art.ginzburg.MiddleClick.plist"
end
