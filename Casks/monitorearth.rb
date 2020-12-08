cask "monitorearth" do
  version "1.0"
  sha256 :no_check

  # lc-devqyyen.cn-n1.lcfile.com/ was verified as official when first introduced to the cask
  url "https://lc-devqyyen.cn-n1.lcfile.com/306d2a604ff2ebb77276.dmg"
  appcast "https://eoikoe.com/monitore"
  name "MonitorEarth"
  name "即刻地球"
  homepage "https://eoikoe.com/monitore"

  auto_updates true

  app "即刻地球.app"
end
