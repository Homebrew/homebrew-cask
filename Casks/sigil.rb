cask 'sigil' do
  version '0.9.9'
  sha256 'a6078f4265039309225a2e20b4886fab280a6f5d96f22391e92be88d6b61e0d5'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom',
          checkpoint: 'e640fbe036146b047813cc43b919c9f55c47cd7c0ac7f87e710b108f69ba3b15'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'

  app 'Sigil.app'
end
