cask 'nteract' do
  version '0.4.2'
  sha256 '848513a52554888c096c648866c281f57b481b831e40ce652b6a91e165302326'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '91c108d7b5c3ee20d639ba0fffb3b3db39df23c4cdc82473e53f10fcbc804ca3'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
