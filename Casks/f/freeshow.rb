cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "a3f5ab366d9ed06cb0466368a4a85b3c412d6afe78d7a896fc90c29fc5fb2634",
         intel: "bcff4e68df6160e61698ebf1b76ce605aaeca3b6460c573b5529c72c7b8a07d2"

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
