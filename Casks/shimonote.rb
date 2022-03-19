cask "shimonote" do
  version "1.5.2"
  sha256 "c0ea43cd66a7b9e2b0e081c769d2a3502e167f0712d5ae445d4ad6c6d4b4375c"

  url "https://assets.shimonote.com/lizard-desktop/static/%E7%9F%B3%E5%A2%A8%E6%96%87%E6%A1%A3-#{version}.dmg",
      verified: "assets.shimonote.com/"
  name "Shimonote"
  desc "Document editor"
  homepage "https://shimo.im/"

  livecheck do
    url "https://shimo.im/download"
    regex(%r{/%E7%9F%B3%E5%A2%A8%E6%96%87%E6%A1%A3[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "石墨文档.app"

  zap trash: [
    "~/Library/Application Support/com.shimo.desktop.main",
    "~/Library/Preferences/com.shimo.desktop.main.plist",
    "~/Library/Saved Application State/com.shimo.desktop.main.savedState",
  ]
end
