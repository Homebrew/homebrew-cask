cask "loop" do
  version "1.2.0"
  sha256 "3287c5b9ca7f194aae53b071e2078f216492ac0a8551fd2ae7d20cf0c80920fb"

  url "https://github.com/MrKai77/Loop/releases/download/#{version}/Loop.zip"
  name "Loop"
  desc "Window manager"
  homepage "https://github.com/MrKai77/Loop"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Loop.app"

  uninstall quit: "com.MrKai77.Loop"

  zap trash: [
    "~/Library/Application Scripts/com.MrKai77.Loop",
    "~/Library/Application Support/Loop",
    "~/Library/Caches/com.MrKai77.Loop",
    "~/Library/HTTPStorages/com.MrKai77.Loop",
    "~/Library/Preferences/com.MrKai77.Loop.plist",
  ]
end
