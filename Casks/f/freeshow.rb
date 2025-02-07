cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.3.7"
  sha256 arm:   "a79659f571127902c782675542a486c9bed5ae4d0938ce877b495dac9c93dc2b",
         intel: "8c9efd9fed72a8d13e967ef4d04baa4b4153936c693dc8128ac10b640be0b0c6"

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
