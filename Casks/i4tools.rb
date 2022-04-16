cask "i4tools" do
  version "1.13.005"
  sha256 "0d2cf2a8c23b9068fab8e8b71c872104df87200539dd942f8bc7cb6d65c4c3dc"

  url "https://d-updater.i4.cn/i4mac/20220413/0/i4Tools_v#{version}_v#{version}.dmg"
  name "i4Tools"
  name "爱思助手"
  desc "Mobile device management software"
  homepage "https://www.i4.cn/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  pkg "i4tools.pkg"

  uninstall quit: "cn.i4tools.mac",
            pkgutil: "cn.i4tools.mac"

  zap trash: [
    "~/Library/Preferences/cn.i4tools.mac.plist",
    "~/Library/Preferences/org.example.i4AirPlayer.plist",
    "~/Library/Saved Application State/org.example.i4AirPlayer.savedState",
  ]
end
