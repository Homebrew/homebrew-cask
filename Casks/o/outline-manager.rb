cask "outline-manager" do
  version "1.15.2"
  sha256 "9c5ccba90834056bcf18ee0ca84d3e036483f503576966da020450bc5bdd1a1d"

  url "https://s3.amazonaws.com/outline-releases/manager/macos/#{version}/1/Outline-Manager.dmg",
      verified: "s3.amazonaws.com/outline-releases/manager/macos/"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://www.getoutline.org/"

  livecheck do
    url "https://s3.amazonaws.com/outline-releases/manager/latest-mac.yml"
    strategy :electron_builder
  end

  app "Outline Manager.app"

  zap trash: [
    "~/Library/Application Support/Outline Manager",
    "~/Library/Preferences/com.electron.outline-manager.plist",
    "~/Library/Saved Application State/com.electron.outline-manager.savedState",
  ]
end
