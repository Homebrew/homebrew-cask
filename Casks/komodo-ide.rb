cask :v1 => 'komodo-ide' do
  version '9.0.1-87208'
  sha256 'b140a291efad0b3a0451cb00cae699bd8485a785c3a9f79ad596b713e58a76bb'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'
  license :commercial

  app 'Komodo IDE 9.app'
end
