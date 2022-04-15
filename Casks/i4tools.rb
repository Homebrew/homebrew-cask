cask "i4tools" do
  version "1.13.005"
  sha256 "0d2cf2a8c23b9068fab8e8b71c872104df87200539dd942f8bc7cb6d65c4c3dc"

  url "http://d-updater.i4.cn/i4mac/20220413/0/i4Tools_v#{version}_v#{version}.dmg"
  name "i4Tools"
  desc "Mobile device management assistant"
  homepage "https://www.i4.cn/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "i4Tools.app"

  uninstall quit: "cn.i4tools.mac"
end
