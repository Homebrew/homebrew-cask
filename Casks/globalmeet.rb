cask "globalmeet" do
  version "7.4.2076.2076"
  sha256 :no_check

  url "https://convergencedesktop.globalmeet.com/installers/stable/GlobalMeet.dmg"
  name "GlobalMeet"
  homepage "https://www.globalmeet.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "GlobalMeet.app"

  zap trash: [
    "~/Library/Application Support/globalmeet",
    "~/Library/Logs/GlobalMeet",
    "~/Library/Saved Application State/com.electron.globalmeet.savedState",
  ]
end
