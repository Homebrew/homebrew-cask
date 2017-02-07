cask 'mojibar' do
  version '2.3.3'
  sha256 '907ec3285f56eb85d6ab462f0493ff839453c0ab2a274fcb7a6055838e70bdd1'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: 'd231ce6091701aba5f03fb1c31591a3c1b8c44f49c59db996a14e7439596c5ad'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end
