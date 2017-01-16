cask 'ovito' do
  version '2.8.1'
  sha256 'ece52b1dc5b0b7e18380c4df105ecc6a6ffb9e3a8fe7cdef100744457b5a8d2a'

  url "https://ovito.org/download/#{version}/ovito-#{version}-macos.dmg"
  name 'OVITO'
  homepage 'https://ovito.org/'

  app 'Ovito.app'
end
