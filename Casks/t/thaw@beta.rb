cask "thaw@beta" do
  version "2.0.0-beta.11"
  sha256 "96f4f2f5b80432950f8c932cffb7296fb6eefe7e9b92b8f7d806d113c650b9c5"

  url "https://github.com/stonerl/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/stonerl/Thaw/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-(beta|RC)[._-]\d+)?)/i)
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Thaw.app"

  zap trash: [
    "~/Library/Caches/com.stonerl.Thaw",
    "~/Library/HTTPStorages/com.stonerl.Thaw",
    "~/Library/Preferences/com.stonerl.Thaw.plist",
    "~/Library/WebKit/com.stonerl.Thaw",
  ]
end
