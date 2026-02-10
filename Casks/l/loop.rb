cask "loop" do
  version "1.4.2"
  sha256 "514e97faab3843cdfb8b1859b91333704639a1a2ce580e4f684d75efe007d386"

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
