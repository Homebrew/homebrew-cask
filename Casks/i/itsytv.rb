cask "itsytv" do
  version "1.6.2"
  sha256 "6ad433fdb4f5c4c1da993d69e14e169b9a4820bbddf7356ee2cfd49f45be50ae"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/Itsytv-#{version}.dmg"
  name "Itsytv"
  desc "Menu bar app for controlling your Apple TV"
  homepage "https://itsytv.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Itsytv.app"

  zap trash: [
    "~/Library/Preferences/app.itsytv.plist",
    "~/Library/Saved Application State/app.itsytv.savedState",
  ]
end
