cask "freeshow" do
  arch arm: "-arm64"

  version "1.2.1"
  sha256 arm:   "3786616e1e70c6e40456f2a75f070a70bb446c5521bb8fe70be30d4be9163434",
         intel: "5fb6a19a4d1e4b8245d35447391df31c804fee1ae554f91b92ae2164fc7d6388"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}#{arch}-mac.zip",
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
