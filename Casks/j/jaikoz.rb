cask "jaikoz" do
  arch arm: "-m1"

  version "11.8,1.0"
  sha256 :no_check

  url "https://www.jthink.net/jaikoz/jsp/manualdownload/jaikoz-osx#{arch}.dmg"
  name "Jaikoz"
  desc "Audio tag editor"
  homepage "https://www.jthink.net/jaikoz/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "Jaikoz.app"

  zap trash: [
    "~/Library/Logs/Jaikoz",
    "~/Library/Preferences/Jaikoz",
    "~/Library/Reports/Jaikoz",
    "~/Library/Saved Application State/com.jthink.jaikoz.savedState",
  ]
end
