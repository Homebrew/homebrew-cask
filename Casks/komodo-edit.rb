cask :v1 => 'komodo-edit' do
  version '9.0.1-15745'
  sha256 'a5b6960c4d6d791cfa72e9dfc9e94aa53f326a808bd012c6e16ec23b15356545'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'http://komodoide.com/komodo-edit'
  license :mpl

  app 'Komodo Edit 9.app'
end
