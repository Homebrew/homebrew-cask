cask "thaw@beta" do
  version "1.2.0-rc.4"
  sha256 "ded406d604b6288a8292705ae48780ced0514d4a4671799fa53dfedd6c4ea829"

  url "https://github.com/stonerl/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/stonerl/Thaw/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-(beta|RC)[._-]\d+)?)/i)
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Thaw.app"

  zap trash: [
    "~/Library/Caches/com.stonerl.Thaw",
    "~/Library/HTTPStorages/com.stonerl.Thaw",
    "~/Library/Preferences/com.stonerl.Thaw.plist",
    "~/Library/WebKit/com.stonerl.Thaw",
  ]
end
