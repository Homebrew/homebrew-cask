cask "itsytv" do
  version "1.6.1"
  sha256 "cdd88872d840d1c8b121e5452bb3623b724a6f826902eaf3708f49b8d7f546b3"

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
