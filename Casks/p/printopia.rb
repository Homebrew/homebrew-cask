cask "printopia" do
  version "3.0.23"
  sha256 "3211bc9136eaa1db849df4109e04e51122032003c1717067d2db92561a54dfee"

  url "https://download.decisivetactics.com/downloads/printopia/Printopia_#{version}.zip"
  name "Printopia"
  desc "AirPrint to any printer"
  homepage "https://www.decisivetactics.com/products/printopia/"

  livecheck do
    url "https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.printopia"
    regex(%r{/Printopia_(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Printopia.app"

  uninstall launchctl: "com.decisivetactics.printopia-server",
            quit:      [
              "com.decisivetactics.printopia",
              "com.decisivetactics.printopia-server",
            ]

  zap trash: [
    "/Library/Application Support/com.decisivetactics.printopia",
    "/Library/Logs/Printopia",
    "/Users/Shared/._com.decisivetactics.printopia",
    "/Users/Shared/Printopia",
    "~/Library/Application Support/com.decisivetactics.printopia",
    "~/Library/Caches/com.decisivetactics.printopia",
    "~/Library/Preferences/com.decisivetactics.printopia.plist",
    "~/Library/Saved Application State/com.decisivetactics.printopia.savedState",
  ]
end
