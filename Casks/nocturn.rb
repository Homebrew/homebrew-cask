cask 'nocturn' do
  version '1.6.0'
  sha256 'f2cc3f4cb9a94f68d9f5d6619502180b15016487e25877455477686d06b4b520'

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast 'https://github.com/k0kubun/Nocturn/releases.atom',
          checkpoint: '662d24f582eadab35cf19a52643f60f73120b796119092fb849b10aaca2f583e'
  name 'Nocturn'
  homepage 'https://github.com/k0kubun/Nocturn'

  app 'Nocturn-darwin-x64/Nocturn.app'
end
