cask :v1 => 'sigil' do
  version '0.9.0'
  sha256 'b6179626af6afa0268443573246fb8fa3db8d40f7216ae364bc5633b91248f64'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  appcast 'https://github.com/user-none/Sigil/releases.atom'
  name 'Sigil'
  homepage 'http://sigil-ebook.com/'
  license :gpl

  app 'Sigil.app'
end
