cask 'ramme' do
  version '2.3.0'
  sha256 'f2da854e10422a5f9b6bf3c29eb07376c0ff6cc86b88520f279c2cca239c4517'

  url "https://github.com/terkelg/ramme/releases/download/#{version}/Ramme-osx-#{version}.zip"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: 'b526301e223e9a36aaebe375a984a28b5210a084a6d8dd2576761c95975196de'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'
end
