cask 'odio' do
  version '1.3.5'
  sha256 'cff3add9553cafd699821eefedb106c3fc6674c82ff33d7b8b8ada903d48e1aa'

  url "https://github.com/odioapp/odio/releases/download/v#{version}/odio-#{version}.dmg"
  appcast 'https://github.com/odioapp/odio/releases.atom'
  name 'odio'
  homepage 'https://github.com/odioapp/odio'

  app 'odio.app'
end
