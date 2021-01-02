cask "printrun" do
  version "2.0.0rc7"
  sha256 "426229043a2a33a6768dcca12135f0751c007595af078665eb854cf87e4e2999"

  url "https://github.com/kliment/Printrun/releases/download/printrun-#{version}/Printrun-Mac-#{version}.zip"
  appcast "https://github.com/kliment/Printrun/releases.atom"
  name "Printrun"
  homepage "https://github.com/kliment/Printrun"

  app "pronterface.app"
end
