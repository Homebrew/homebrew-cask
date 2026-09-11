cask "middleclick" do
  version "3.3.0"
  sha256 "55b61579bea1bff9575d0aae55316f826ade1cfc8948da91151bcc99df3957da"

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
