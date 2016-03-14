cask 'sigil' do
  version '0.9.4'
  sha256 '0324c2209000f1d27c9b233fa2f1e811046306a4ce29504ff1c4c9fd0d971f09'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom',
          checkpoint: 'c30813f46cccc3943608c882efcb688d6f9a879b217f815651adb798b8b9d0a2'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
