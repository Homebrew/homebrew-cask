cask 'sigil' do
  version '0.9.2'
  sha256 'ea9aca6e9c1c4d7931982fd6a3c5bcc4e1d35986e728fe3522dc92e9a6200f25'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom',
          checkpoint: '23751416ae96455509d00cb3e55beedbf6047c089c5f0d3c4663ca4faf6e64e8'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
