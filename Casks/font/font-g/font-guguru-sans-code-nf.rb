cask "font-guguru-sans-code-nf" do
  version "0.0.3"
  sha256 "9187a246df76a4e44d1a6094babefb4e64b74c189bc7c1a776218870509fd65c"

  url "https://github.com/yuru7/guguru-sans-code/releases/download/v#{version}/GuguruSansCodeNF_v#{version}.zip"
  name "Guguru Sans Code NF"
  homepage "https://github.com/yuru7/guguru-sans-code"

  font "GuguruSansCodeNF_v#{version}/GuguruSansCodeConsole_NF/GuguruSansCodeConsoleNF-BoldItalic.ttf"
  font "GuguruSansCodeNF_v#{version}/GuguruSansCodeConsole_NF/GuguruSansCodeConsoleNF-Italic.ttf"
  font "GuguruSansCodeNF_v#{version}/GuguruSansCodeConsole_NF/GuguruSansCodeConsoleNF-Bold.ttf"
  font "GuguruSansCodeNF_v#{version}/GuguruSansCodeConsole_NF/GuguruSansCodeConsoleNF-Regular.ttf"
  font "GuguruSansCodeNF_v#{version}/GuguruSansCodeConsole35_NF/GuguruSansCodeConsole35NF-BoldItalic.ttf"
  font "GuguruSansCodeNF_v#{version}/GuguruSansCodeConsole35_NF/GuguruSansCodeConsole35NF-Italic.ttf"
  font "GuguruSansCodeNF_v#{version}/GuguruSansCodeConsole35_NF/GuguruSansCodeConsole35NF-Bold.ttf"
  font "GuguruSansCodeNF_v#{version}/GuguruSansCodeConsole35_NF/GuguruSansCodeConsole35NF-Regular.ttf"

  # No zap stanza required
end
