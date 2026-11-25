cask "outline-manager" do
  version "1.23.0,1"
  sha256 "e31028c4336b4b47824e640c28719fd6ab4b3312dcb0826aedc5d49c5dfa0171"

  url "https://s3.amazonaws.com/outline-releases/manager/macos/#{version.csv.first}/#{version.csv.second}/Outline-Manager.dmg"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://getoutline.org/"

  livecheck do
    url "https://s3.amazonaws.com/outline-releases/manager/latest-mac.yml"
    regex(%r{/(\d+)/Outline-Manager\.dmg}i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Outline Manager.app"

  zap trash: [
    "~/Library/Application Support/Outline Manager",
    "~/Library/Caches/@outlineserver_manager-updater",
    "~/Library/Caches/com.electron.outlineservermanager.ShipIt",
    "~/Library/Preferences/com.electron.outline-manager.plist",
    "~/Library/Preferences/com.electron.outlineservermanager.plist",
    "~/Library/Saved Application State/com.electron.outline-manager.savedState",
    "~/Library/Saved Application State/com.electron.outlineservermanager.savedState",
  ]
end
