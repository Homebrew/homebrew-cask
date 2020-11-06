cask "printopia" do
  version "3.0.14"
  sha256 "09aa54a70fb17ff459e5d5109d120ff8fb429a7a196c057cbdeea8897eb69850"

  url "https://www.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  appcast "https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.printopia"
  name "Printopia"
  desc "Wireless printing to any printer"
  homepage "https://www.decisivetactics.com/products/printopia/"

  app "Printopia.app"

  zap trash: "~/Library/Preferences/com.ecamm.printopia.plist"
end
