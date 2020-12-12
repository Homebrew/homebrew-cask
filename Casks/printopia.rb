cask "printopia" do
  version "3.0.15"
  sha256 "0528697b1f95010990517cd31be8bc40408c0e075c9dcc325ff53a2650ead11b"

  url "https://download.decisivetactics.com/downloads/printopia/Printopia_#{version}.zip"
  appcast "https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.printopia"
  name "Printopia"
  desc "Wireless printing to any printer"
  homepage "https://www.decisivetactics.com/products/printopia/"

  app "Printopia.app"

  zap trash: "~/Library/Preferences/com.ecamm.printopia.plist"
end
