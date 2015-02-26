cask :v1 => "hotswitch" do
  version "1.2"
  sha256 "f9db052a40efa5e6520434567c99ac965874e63b6afd429b5dc760e71a3aeefa"

  url "https://github.com/oniatsu/HotSwitch/releases/download/v#{version}/HotSwitch-#{version}.zip"
  name "HotSwitch"
  homepage "http://oniatsu.github.io/HotSwitch/"
  license :mit

  app "HotSwitch.app"
end
