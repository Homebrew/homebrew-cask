cask "robo-3t" do
  version "1.4.4,e6ac9ec"
  sha256 "aa5e56482c2f454154b2a346dc85e5016ffb5facabf649c0aaa186d970842bcd"

  url "https://download.studio3t.com/robomongo/mac/robo3t-#{version.csv.first}-darwin-x86_64-#{version.csv.second}.dmg",
      verified: "download.studio3t.com/"
  name "Robo 3T (formerly Robomongo)"
  desc "MongoDB management tool"
  homepage "https://robomongo.org/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Robo 3T.app"

  uninstall quit: "Robo 3T"

  zap trash: [
    "~/.3T/robo-3t/",
    "~/Library/Application Support/Robo 3T",
    "~/Library/Caches/Robo 3T",
    "~/Library/Preferences/com.3tsoftwarelabs.robo3t.plist",
    "~/Library/Saved Application State/com.3tsoftwarelabs.robo3t.savedState",
    "~/Library/Saved Application State/Robo 3T.savedState",
  ]
end
