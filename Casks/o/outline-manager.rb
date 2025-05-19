cask "outline-manager" do
  version "1.17.2,1"
  sha256 "440f589c27295c7428bdce4ad433116fd69d557dda98aa0da7bf54f125375ea7"

  url "https://s3.amazonaws.com/outline-releases/manager/macos/#{version.csv.first}/#{version.csv.second}/Outline-Manager.dmg",
      verified: "s3.amazonaws.com/outline-releases/manager/macos/"
  name "Outline Manager"
  desc "Tool to create and manage Outline servers, powered by Shadowsocks"
  homepage "https://www.getoutline.org/"

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

  app "Outline Manager.app"

  zap trash: [
    "~/Library/Application Support/Outline Manager",
    "~/Library/Preferences/com.electron.outline-manager.plist",
    "~/Library/Saved Application State/com.electron.outline-manager.savedState",
  ]
end
