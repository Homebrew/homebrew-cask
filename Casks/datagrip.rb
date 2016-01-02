cask 'datagrip' do
  version '1.0'
  sha256 '32640fd394c57b4c5625e254971d423e84b3e39c0dede63cad17620be52ca155'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}-custom-jdk-bundled.dmg"
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'
  license :commercial

  app 'DataGrip.app'
end
