cask "line-bot-designer" do
  version "1.3.4"
  sha256 "d4b80baaa73d0947f6b6be2c2530877edc67d4bbe208a5cc1ad0c509b8f505b1"

  url "https://d.line-scdn.net/r/devcenter/bot-designer/LINE%20Bot%20Designer-#{version}.dmg",
      verified: "d.line-scdn.net/"
  name "LINE Bot Designer"
  homepage "https://developers.line.biz/en/"

  livecheck do
    url "https://developers.line.biz/en/bot-designer/download/"
    strategy :page_match
    regex(%r{href=.*?/LINE%20Bot%20Designer-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "LINE Bot Designer.app"
end
