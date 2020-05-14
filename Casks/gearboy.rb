cask 'gearboy' do
  version '3.1.0'
  sha256 '3a2991acc45fc6234bff69493b66b5ff82b6969627b0e2fcca878de988530371'

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  appcast 'https://github.com/drhelius/Gearboy/releases.atom'
  name 'Gearboy'
  homepage 'https://github.com/drhelius/Gearboy'

  app "Gearboy-#{version}-macOS/Gearboy.app"
end
