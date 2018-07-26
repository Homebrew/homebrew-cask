cask 'mirador' do
  version '1.5.1'
  sha256 '91387a237f338722306a7d288bd7d809f7595e10267e1ef0653c93c713028290'

  # github.com/mirador/mirador was verified as official when first introduced to the cask
  url "https://github.com/mirador/mirador/releases/download/latest-macos/mirador-#{version}-macos.zip"
  appcast 'https://github.com/mirador/mirador/releases.atom'
  name 'Mirador'
  homepage 'https://fathom.info/mirador/'

  app 'Mirador.app'
end
