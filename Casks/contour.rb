cask "contour" do
  version "0.3.2.202"
  sha256 "6f84d2c091fe4bbad567048a484039ae70671fd2d8db76bab0fc99d1f8121c6b"

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-osx.dmg"
  name "Contour"
  desc "Terminal emulator"
  homepage "https://github.com/contour-terminal/contour/"

  app "Contour.app"
  binary "#{appdir}/Contour.app/Contents/MacOS/contour"
  binary "#{appdir}/Contour.app/Contents/Resources/shell-integration.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_contour"
  binary "#{appdir}/Contour.app/Contents/Resources/terminfo/63/contour",
         target: "#{ENV.fetch("TERMINFO", "#{Dir.home}/.terminfo")}/63/contour"
  binary "#{appdir}/Contour.app/Contents/Resources/terminfo/63/contour-latest",
         target: "#{ENV.fetch("TERMINFO", "#{Dir.home}/.terminfo")}/63/contour-latest"

  zap trash: "~/.config/contour"
end
