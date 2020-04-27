cask 'gearboy' do
  version '3.0.4'
  sha256 '9dfecdd54d4809a445f796064a2c2d78bb019ac01b98f495e8cc3c3437f94c37'

  url "https://github.com/drhelius/Gearboy/releases/download/gearboy-#{version}/Gearboy-#{version}-macOS.zip"
  appcast 'https://github.com/drhelius/Gearboy/releases.atom'
  name 'Gearboy'
  homepage 'https://github.com/drhelius/Gearboy'

  app "Gearboy-#{version}-macOS/Gearboy.app"
end
