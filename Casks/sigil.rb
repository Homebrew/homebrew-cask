cask 'sigil' do
  version '0.9.10'
  sha256 '40d3d9db72f9205d3153049dd6de3f5ea855c0d1fcd543e5ae5bcdc76ec98641'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'

  app 'Sigil.app'
end
