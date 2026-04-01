cask "itsytv" do
  version "1.5.0"
  sha256 "bb7289a08cd3b45fbf741d804de40319231a19816976aa32734695af9268da7a"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/Itsytv-#{version}.dmg",
      verified: "github.com/nickustinov/itsytv-macos/"
  name "Itsytv"
  desc "Menu bar app for controlling your Apple TV"
  homepage "https://itsytv.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Itsytv.app"

  zap trash: [
    "~/Library/Preferences/app.itsytv.plist",
    "~/Library/Saved Application State/app.itsytv.savedState",
  ]
end
