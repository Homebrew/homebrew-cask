cask 'sigil' do
  version '0.9.2'
  sha256 'ea9aca6e9c1c4d7931982fd6a3c5bcc4e1d35986e728fe3522dc92e9a6200f25'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom',
          :sha256 => '7db982b4c4be6c05da7438161c8f844a32203c5a3bf76b2ab14f5eddc2ad69ce'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
