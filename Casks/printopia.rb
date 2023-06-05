cask "printopia" do
  version "3.0.21"
  sha256 "e93ebd9133c4417572f103c1a0475ef5bd627659e0d71c151199ed2964a8d700"

  url "https://download.decisivetactics.com/downloads/printopia/Printopia_#{version}.zip"
  name "Printopia"
  desc "AirPrint to any printer"
  homepage "https://www.decisivetactics.com/products/printopia/"

  livecheck do
    url "https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.printopia"
    regex(%r{/Printopia_(\d+(?:\.\d+)+)\.zip}i)
  end

  app "Printopia.app"

  uninstall launchctl: "com.decisivetactics.printopia-server",
            quit:      [
              "com.decisivetactics.printopia",
              "com.decisivetactics.printopia-server",
            ]

  zap trash: [
    "~/Library/Application Support/com.decisivetactics.printopia",
    "~/Library/Caches/com.decisivetactics.printopia",
    "~/Library/Preferences/com.decisivetactics.printopia.plist",
    "~/Library/Saved Application State/com.decisivetactics.printopia.savedState",
    "/Library/Application Support/com.decisivetactics.printopia",
    "/Library/Logs/Printopia",
    "/Users/Shared/._com.decisivetactics.printopia",
    "/Users/Shared/Printopia",
  ]
end
