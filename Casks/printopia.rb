cask "printopia" do
  version "3.0.20"
  sha256 "a39d69502d5b3805b83744b8ce865c5cfad78cf192de7bf9b42b28a1825c7fee"

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
