cask "printrun" do
  version "2.0.0rc7"
  sha256 "c2c6c2d519b5a224b67e6b9fa7be2a70aac83839f9acc6309c4f70f3c40e4858"

  url "https://github.com/kliment/Printrun/releases/download/printrun-#{version}/Printrun-#{version}-macos.zip"
  appcast "https://github.com/kliment/Printrun/releases.atom"
  name "Printrun"
  desc "Python 3d printing host software"
  homepage "https://github.com/kliment/Printrun"

  app "Printrun-#{version}-macos/pronterface.app"

  caveats "You MUST run 'chmod a+x /Applications/pronterface.app/Contents/MacOS/pronterface' in shell after install."
end
