cask "font-guguru-sans-code" do
  version "0.0.3"
  sha256 "c427daf518d93d2de083973fdc68d5f57dc111fdd00e1b011d6e922a83029ce5"

  url "https://github.com/yuru7/guguru-sans-code/releases/download/v#{version}/GuguruSansCode_v#{version}.zip"
  name "Guguru Sans Code"
  homepage "https://github.com/yuru7/guguru-sans-code"

  font "GuguruSansCode_v#{version}/GuguruSansCode35/GuguruSansCode35-Bold.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCode35/GuguruSansCode35-Regular.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCode35/GuguruSansCode35-BoldItalic.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCode35/GuguruSansCode35-Italic.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCodeConsole/GuguruSansCodeConsole-Italic.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCodeConsole/GuguruSansCodeConsole-Bold.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCodeConsole/GuguruSansCodeConsole-BoldItalic.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCodeConsole/GuguruSansCodeConsole-Regular.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCode/GuguruSansCode-BoldItalic.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCode/GuguruSansCode-Italic.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCode/GuguruSansCode-Regular.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCode/GuguruSansCode-Bold.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCodeConsole35/GuguruSansCodeConsole35-Regular.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCodeConsole35/GuguruSansCodeConsole35-Italic.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCodeConsole35/GuguruSansCodeConsole35-BoldItalic.ttf"
  font "GuguruSansCode_v#{version}/GuguruSansCodeConsole35/GuguruSansCodeConsole35-Bold.ttf"

  # No zap stanza required
end
