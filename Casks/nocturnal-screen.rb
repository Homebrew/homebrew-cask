cask 'nocturnal-screen' do
  version '1.1'
  sha256 'b3ab92067e1fa999ef09cadf6a26e23c1a46e6595fd64d9a1b614225fdbd4681'

  url "https://github.com/joshjon/nocturnal/releases/download/v#{version}/Nocturnal-#{version}.zip"
  appcast 'https://github.com/joshjon/nocturnal/releases.atom'
  name 'Nocturnal Screen'
  homepage 'https://github.com/joshjon/nocturnal'

  app 'Nocturnal.app'
end
