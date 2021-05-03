cask "outline-manager" do
  version "1.8.0"
  sha256 "7d8b3a0af055165edee40015c7ebef9b56fd2e92ade0b0b17cab712bde615059"

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
