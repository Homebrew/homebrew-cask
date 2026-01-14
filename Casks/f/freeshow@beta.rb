cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.5.6-beta.2"
  sha256 arm:   "2ffbcea3abf9d85a61f641b76e36fe5656b5adf1f8b1512c85624cce2ca439a6",
         intel: "11baac089e268ec54c4e26f5f1111fab2ebc92a4277f1e8fc54ab1aa4ac761e0"

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
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
