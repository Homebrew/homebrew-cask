cask "printrun" do
  version "1.6.0,18Nov2017"
  sha256 "426229043a2a33a6768dcca12135f0751c007595af078665eb854cf87e4e2999"

  url "https://github.com/kliment/Printrun/releases/download/printrun-#{version.before_comma}/Printrun-Mac-#{version.after_comma}.zip"
  appcast "https://github.com/kliment/Printrun/releases.atom"
  name "Printrun"
  homepage "https://github.com/kliment/Printrun"

  app "Printrun-Mac-#{version.after_comma}.app"
end
