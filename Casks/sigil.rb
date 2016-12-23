cask 'sigil' do
  version '0.9.7'
  sha256 '539801d7c35b0f3e7a393f5ce16bded49755bbe5f2fa4c7cfd23d653d8b0e968'

  # github.com/Sigil-Ebook/Sigil was verified as official when first introduced to the cask
  url "https://github.com/Sigil-Ebook/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/Sigil-Ebook/Sigil/releases.atom',
          checkpoint: '72eec9fe9708e2704e8ea9e1dbf465b6475afbf7192df66fcfbe59b4e6b5b565'
  name 'Sigil'
  homepage 'https://sigil-ebook.com/'

  app 'Sigil.app'
end
