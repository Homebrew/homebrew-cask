cask 'coolbeans' do
  version '2018.12'
  sha256 'ad707c31e3b225de8d67cb961155d998f53b27cbbe4a44d5743997d8bd14c0d5'

  url "https://paris.download.coolbeans.xyz/download/CoolBeans-#{version}.1.dmg"
  appcast 'https://coolbeans.xyz/download-macos.html'
  name 'CoolBeans'
  homepage 'https://coolbeans.xyz/'

  app "CoolBeans #{version}.app"
end
