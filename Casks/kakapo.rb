cask 'kakapo' do
  version '1.3.0'
  sha256 '4f89f2d651b88e7c13bce3cccefc4929e83a5f509dae102f071ecd80aab9d524'

  # github.com/bluedaniel/Kakapo-app was verified as official when first introduced to the cask
  url "https://github.com/bluedaniel/Kakapo-app/releases/download/v#{version}/Kakapo-#{version}-Mac.zip"
  appcast 'https://github.com/bluedaniel/Kakapo-app/releases.atom',
          checkpoint: 'e87fbb21a94fabf4fe86d677d316717512dfa54b64fe34bfe0000a2c77fd1530'
  name 'Kakapo'
  homepage 'http://www.kakapo.co/app.html'

  app 'Kakapo.app'
end
