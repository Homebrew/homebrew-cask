cask "printopia" do
  version "3.0.16"
  sha256 "871ffce73c734c9c82a6b1fa341d231b0cdef51d5c1b8f1415dfe0414aaf8130"

  url "https://download.decisivetactics.com/downloads/printopia/Printopia_#{version}.zip"
  appcast "https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.printopia"
  name "Printopia"
  desc "Wireless printing to any printer"
  homepage "https://www.decisivetactics.com/products/printopia/"

  app "Printopia.app"

  zap trash: "~/Library/Preferences/com.ecamm.printopia.plist"
end
