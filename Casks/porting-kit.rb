cask "porting-kit" do
  version "4.1.52"
  sha256 "19978326e29cb25935c82eac112e3b2c16ee48959db271e15b6b92e99fbfdb7a"

  url "https://portingkit.com/pub/portingkit/Porting%20Kit-#{version}-mac.zip"
  name "Porting Kit"
  desc "Install games and apps compiled for Microsoft Windows"
  homepage "https://portingkit.com/"

  livecheck do
    url "https://portingkit.com/pub/portingkit/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Porting Kit.app"
end
