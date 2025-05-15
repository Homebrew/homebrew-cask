cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.4.3"
  sha256 arm:   "b37aa3b9bcad2f41df5fa65bbc69e9a3ab6261732b07096f140aadf481f59488",
         intel: "11d9d2f135e5f1c0d1c4d92a9ab2c432c2ee726866a7bef68b2cc2c869965712"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
