cask "thaw@beta" do
  version "1.1.99-beta.10"
  sha256 "c920ac9b8cfc990e6c695b13bea51561afbe8a7c5928c57a8f792e03a1be1d52"

  url "https://github.com/stonerl/Thaw/releases/download/#{version}/Thaw_#{version}.zip"
  name "Thaw"
  desc "Menu bar manager"
  homepage "https://github.com/stonerl/Thaw/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta[._-]\d+)?)/i)
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
