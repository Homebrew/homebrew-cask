cask 'gearboy' do
  version '3.0.3'
  sha256 'd940227966e3500a9fc3d612b00ca52cab58e03e1aa70d4ec97f1884a2b0686a'

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  appcast 'https://github.com/drhelius/Gearboy/releases.atom'
  name 'Gearboy'
  homepage 'https://github.com/drhelius/Gearboy'

  app "Gearboy-#{version}-macOS/Gearboy.app"
end
