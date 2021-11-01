cask "printopia" do
  version "3.0.19"
  sha256 "fe565c3e5da8ce86dd912fcddd6bca472dd4e33bdfc537018841bcaf73828d16"

  url "https://download.decisivetactics.com/downloads/printopia/Printopia_#{version}.zip"
  name "Printopia"
  desc "Wireless printing to any printer"
  homepage "https://www.decisivetactics.com/products/printopia/"

  livecheck do
    url "https://www.decisivetactics.com/api/checkupdate?x-app_id=com.decisivetactics.printopia"
    strategy :page_match
    regex(%r{/Printopia_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Printopia.app"

  zap trash: "~/Library/Preferences/com.ecamm.printopia.plist"
end
