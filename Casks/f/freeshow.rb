cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.2.9"
  sha256 arm:   "3ec682b437c813471293a78179e009e2203320b746ddd7f5119b18e104cb6598",
         intel: "6166f77a84b7cd8c0a22acb0de878fa3f75b978ba76f6a0e0cfc16cf286c0824"

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
  depends_on macos: ">= :high_sierra"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
