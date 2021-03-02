cask "printopia" do
  version "3.0.17"
  sha256 "e278e242f3d3fce6e80c2dbca8a5efd78b017dca23b3ec4071355a12632525a7"

  url "https://download.decisivetactics.com/downloads/printopia/Printopia_#{version}.zip"
  appcast "https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.printopia"
  name "Printopia"
  desc "Wireless printing to any printer"
  homepage "https://www.decisivetactics.com/products/printopia/"

  app "Printopia.app"

  zap trash: "~/Library/Preferences/com.ecamm.printopia.plist"
end
