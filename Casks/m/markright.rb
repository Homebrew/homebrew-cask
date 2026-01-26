cask "markright" do
  version "1.0.0"
  sha256 "b92b8542d61cf04621d49897e83796e8369f6a9f037a633dbb0df507e81183ac"

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_#{version}.dmg"
  name "MarkRight"
  desc "Markdown editor with live preview"
  homepage "https://github.com/dvcrn/markright"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MarkRight.app"

  zap trash: [
    "~/Library/Application Support/MarkRight",
    "~/Library/Caches/MarkRight",
    "~/Library/Preferences/com.electron.markright.plist",
  ]
end
