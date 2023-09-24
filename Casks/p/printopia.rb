cask "printopia" do
  version "3.0.22"
  sha256 "6186943f1ec0d45b26f86a2d91fccc0a03ad7847bddefe4feb9d9cd63349b69a"

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
