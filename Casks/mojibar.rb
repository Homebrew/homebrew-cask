cask 'mojibar' do
  version '2.1.1'
  sha256 '34c643d3974f4bf438a2bf5ee19ac324086b6ac31cb3a88a836c7f49c449a591'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: 'd00ef87055fa8a77db8d8a5829a6e7780555a71e59d71111ffc51cc54ee93f50'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'
  license :mit

  app 'Mojibar-darwin-x64/Mojibar.app'
end
