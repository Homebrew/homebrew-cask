cask "itsytv" do
  version "1.4.4"
  sha256 "6e8f6bd588033b6601b74e280b09b936b9ac5603b7836fc2e70721f0e7aa390f"

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
