cask "fontplop" do
  version "1.3.0"
  sha256 "0ada8c9040bb3da489965b917990f6d88da23c8fec5602f798c91db7e2aafb0e"

  # github.com/matthewgonzalez/fontplop/ was verified as official when first introduced to the cask
  url "https://github.com/matthewgonzalez/fontplop/releases/download/v#{version}/fontplop-#{version}.dmg"
  appcast "https://github.com/matthewgonzalez/fontplop/releases.atom"
  name "Fontplop"
  desc "Open Source Webfont Converter"
  homepage "https://www.fontplop.com/"

  app "fontplop.app"
end
