cask "monitorearth" do
  version "1.0.0"
  sha256 "5ef6fcc62a8880f238e9b59d8d7e5a6a4e609fd6305400d750ee1737832a7711"

  # lc-devqyyen.cn-n1.lcfile.com/ was verified as official when first introduced to the cask
  url "https://lc-devqyyen.cn-n1.lcfile.com/306d2a604ff2ebb77276.dmg"
  appcast "https://eoikoe.com/monitore",
          must_contain: version.major_minor
  name "MonitorEarth"
  name "即刻地球"
  homepage "https://eoikoe.com/monitore"

  auto_updates true

  app "即刻地球.app"
end
