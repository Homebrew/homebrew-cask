cask "contour" do
  version "0.3.9.250"
  sha256 "9b31fd056f672792f50d4a16416e8b1e0ecd4090404a62700156d3b0744fde07"

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
