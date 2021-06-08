cask "porting-kit" do
  version "4.1.45"
  sha256 "772d9e0841487b20a47f2c99ac1834da8fe6a62eb15074ae7da04094926efdb9"

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
