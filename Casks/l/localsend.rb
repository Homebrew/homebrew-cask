cask "localsend" do
  version "1.16.0"
  sha256 "08f01c545430905c76f01957270f1d1016472eaf9fd0351d12d586582d834bca"

  url "https://github.com/localsend/localsend/releases/download/v#{version}/LocalSend-#{version}.dmg",
      verified: "github.com/localsend/localsend/"
  name "LocalSend"
  desc "Open-source cross-platform alternative to AirDrop"
  homepage "https://localsend.org/"

  depends_on macos: ">= :big_sur"

  app "LocalSend.app"

  zap trash: [
    "~/Library/Application Scripts/org.localsend.localsendApp",
    "~/Library/Containers/org.localsend.localsendApp",
    "~/Library/Preferences/org.localsend.localsendApp.plist",
    "~/Library/Saved Application State/org.localsend.localsendApp.savedState",
  ]
end
