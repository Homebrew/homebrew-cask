cask 'komodo-edit' do
  version '10.1.1-17414'
  sha256 'ff5f06fa202bb82b4e30f55f03a8ea657fcf4dbcc1af8dfd9c73660bf824a406'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://komodoide.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
