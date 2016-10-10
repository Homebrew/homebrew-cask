cask 'sigil' do
  version '0.9.6'
  sha256 'fc71c79a920e022ae7a0eaccc5e1cfdc4fd116e2a0b8a3dfa27522605f943b59'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom',
          checkpoint: 'd5436acdc8e533bc0b2aea3e30a4cffdf513ec10f21e27cd3396f839780d39e6'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'

  app 'Sigil.app'
end
