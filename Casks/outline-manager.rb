cask "outline-manager" do
  version "1.8.1"
  sha256 "4538a85377edb1558d0fd90f33c0bca07d1e4ca115adc79851011e3802fd3a62"

  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg",
      verified: "github.com/Jigsaw-Code/outline-server/"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://www.getoutline.org/"

  livecheck do
    url "https://github.com/Jigsaw-Code/outline-releases/raw/master/manager/latest-mac.yml"
    strategy :page_match do |page|
      YAML.safe_load(page)["version"]
    end
  end

  app "Outline Manager.app"

  zap trash: [
    "~/Library/Application Support/Outline Manager",
    "~/Library/Preferences/com.electron.outline-manager.plist",
    "~/Library/Saved Application State/com.electron.outline-manager.savedState",
  ]
end
