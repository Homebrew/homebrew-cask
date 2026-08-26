cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.5"
  sha256 arm:   "1de2c724b4a05717aa3a6ed74d7c30da9c1b4ae67fb031897b4220d75a63a270",
         intel: "e07e45520615478e0c8ea1c39b45910b5d736b945897a1cd17716fa8e4c3c198"

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
  conflicts_with cask: "freeshow@beta"
  depends_on macos: :big_sur

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
