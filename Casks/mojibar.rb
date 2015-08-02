cask :v1 => 'mojibar' do
  version '1.1.2'
  sha256 '3e6186f5cf63b11fdbf923d327ca248a89af84d2182a008297a6902d4e5cf817'

  url "https://github.com/muan/mojibar/releases/download/#{version}/Mojibar-#{version}.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'
  license :mit

  app 'Mojibar-darwin-x64/Mojibar.app'
end
