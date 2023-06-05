cask "contour" do
  version "0.3.12.262"
  sha256 "45487d423767a20c2d55a712392cebea6b3d2d259c68fbce8f11c6f7e155cc76"

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-osx.dmg"
  name "Contour"
  desc "Terminal emulator"
  homepage "https://github.com/contour-terminal/contour/"

  app "Contour.app"
  binary "Contour.app/Contents/MacOS/contour"
  binary "Contour.app/Contents/Resources/shell-integration/shell-integration.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_contour"
  binary "Contour.app/Contents/Resources/terminfo/63/contour",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/63/contour"
  binary "Contour.app/Contents/Resources/terminfo/63/contour-latest",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/63/contour-latest"

  zap trash: "~/.config/contour"
end
