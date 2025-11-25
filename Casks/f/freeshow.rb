cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.5.3"
  sha256 arm:   "5b7860f70f3f599beb03012dd4ccd9279c5debe503f82e26f91ff64d73c2db0f",
         intel: "01ad449f008e3160fb630e3a21e889f4468a05f95202c836888b722bbaca3d16"

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
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
