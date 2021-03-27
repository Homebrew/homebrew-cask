cask "printopia" do
  version "3.0.18"
  sha256 "51de92ead595942ade92c088f30ac2a64756df0fc5abaec2f7f20d9bb1ac2a16"

  url "https://download.decisivetactics.com/downloads/printopia/Printopia_#{version}.zip"
  appcast "https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.printopia"
  name "Printopia"
  desc "Wireless printing to any printer"
  homepage "https://www.decisivetactics.com/products/printopia/"

  app "Printopia.app"

  zap trash: "~/Library/Preferences/com.ecamm.printopia.plist"
end
