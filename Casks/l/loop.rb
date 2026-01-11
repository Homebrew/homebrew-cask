cask "loop" do
  version "1.4.0"
  sha256 "78406ace1935d727270ebae912cf16c49125cf17fb9aac5adf5004e8e90de0f7"

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
