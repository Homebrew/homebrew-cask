cask :v1 => 'gitter' do
  version '1.159'
  sha256 'd118559341385e8b0eba1c5c3ff578a3e03914aaf5c4f0c71d5db89e1444b1b6'

  url "http://update.gitter.im/osx/Gitter-#{version}.dmg"
  appcast 'http://update.gitter.im/osx/appcast.xml',
          :sha256 => 'd7f4a27606703839676ad13c58c1d21c4ac9dae5d76ccff28f92e7d58b787912'
  homepage 'https://gitter.im/'
  license :unknown

  app 'Gitter.app'
end
