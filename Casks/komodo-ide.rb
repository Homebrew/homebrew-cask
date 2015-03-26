cask :v1 => 'komodo-ide' do
  version '9.0.0-87165'
  sha256 '2af28265d322eac0bb4fb0096d657e4e9585933e6d53cc3b3cd3f6b04914097a'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  homepage 'http://komodoide.com/'
  license :commercial

  app 'Komodo IDE 9.app'
end
