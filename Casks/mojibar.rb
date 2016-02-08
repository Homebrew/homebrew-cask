cask 'mojibar' do
  version '2.1.1'
  sha256 '34c643d3974f4bf438a2bf5ee19ac324086b6ac31cb3a88a836c7f49c449a591'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '3186e269c95fc59d7b0b39785e6608ba35a4a399796be0ed22e8a08b11ee0922'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'
  license :mit

  app 'Mojibar-darwin-x64/Mojibar.app'
end
