cask :v1 => 'komodo-ide' do
  version '9.1.0-87337'
  sha256 'd39737cc24069723130296f68a401ab39e88f989fbdec659b9dafb3c1fef563b'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'
  license :commercial

  app 'Komodo IDE 9.app'
end
