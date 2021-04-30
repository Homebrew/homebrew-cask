cask "monitorearth" do
  version "1.0.0"
  sha256 :no_check

  url "https://lc-devqyyen.cn-n1.lcfile.com/306d2a604ff2ebb77276.dmg",
      verified: "lc-devqyyen.cn-n1.lcfile.com/"
  appcast "https://eoikoe.com/monitore",
          must_contain: version.major_minor
  name "MonitorEarth"
  name "即刻地球"
  homepage "https://eoikoe.com/monitore"

  auto_updates true

  app "即刻地球.app"
end
