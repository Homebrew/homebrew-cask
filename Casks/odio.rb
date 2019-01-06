cask 'odio' do
  version '1.3.5'
  sha256 'cff3add9553cafd699821eefedb106c3fc6674c82ff33d7b8b8ada903d48e1aa'

  # github.com/odioapp/odio was verified as official when first introduced to the cask
  url "https://github.com/odioapp/odio/releases/download/v#{version}/odio-#{version}.dmg"
  appcast 'https://github.com/odioapp/odio/releases.atom'
  name 'odio'
  homepage 'https://www.odio.io/'

  app 'odio.app'
end
