cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1-beta.2"
  sha256 arm:   "8cff85f13d1d5e644407a7e1f7b731d99c0c899a6885c34decbc157c8c18956e",
         intel: "f1ae0ee0e4fa27daf18fed6b5e032656a72c95f5d8708e1aabb41b71034546ce"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on macos: :big_sur

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
