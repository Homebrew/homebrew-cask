cask "touchosc-bridge" do
  version "1.7.3.152"
  sha256 "fcc6d30e0c2fff5031c6ca8fa731fff832e0f0bb39e370c961b35d0d291c725a"

  url "https://hexler.net/pub/touchosc/touchosc-bridge-#{version}-macos.dmg"
  name "TouchOSC Bridge"
  desc "Modular touch control surface bridge for OSC & MIDI"
  homepage "https://hexler.net/touchosc"

  livecheck do
    url "https://hexler.net/touchosc/bridge-releases"
    regex(%r{href=.*?/touchosc[._-]bridge[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg}i)
  end

  app "TouchOSC Bridge.app"

  zap trash: "~/Library/Preferences/net.hexler.TouchOSCBridge.plist"
end
