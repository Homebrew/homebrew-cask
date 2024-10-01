cask "contour" do
  version "0.5.1.7247"
  sha256 "70484619b15eab2af562a2b11cc8bd44e67e514992ad1bb615ac2a0180708fae"

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-osx.dmg"
  name "contour"
  desc "Terminal emulator"
  homepage "https://github.com/contour-terminal/contour/"

  app "contour.app"
  binary "contour.app/Contents/MacOS/contour"
  binary "contour.app/Contents/Resources/shell-integration/shell-integration.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_contour"
  binary "contour.app/Contents/Resources/terminfo/63/contour",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/63/contour"

  zap trash: "~/.config/contour"
end
