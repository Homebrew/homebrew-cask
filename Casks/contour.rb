cask "contour" do
  version "0.3.5.238"
  sha256 "b278112fa0dd00e016dfc75eb89f29b063d49fa1c84f2e9c6424de637dc860c4"

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
