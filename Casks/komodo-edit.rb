cask :v1 => 'komodo-edit' do
  version '9.1.0-15798'
  sha256 '8b5e549813f9990beb77430c92f11ac246e19edb63e4bfce51e1609dceac76b7'

  # activestate.com is the official download host per the vendor homepage
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'http://komodoide.com/komodo-edit'
  license :mpl

  app 'Komodo Edit 9.app'
end
