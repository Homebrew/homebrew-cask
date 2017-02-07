cask 'mojibar' do
  version '2.3.3'
  sha256 '907ec3285f56eb85d6ab462f0493ff839453c0ab2a274fcb7a6055838e70bdd1'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '3b1b56723ab897e45576e08bbe4e7bf05734e7d1b8d0eb7f7a5f69badda4ee8a'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end
