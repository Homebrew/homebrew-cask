cask 'komodo-edit' do
  version '10.2.2-17703'
  sha256 'a4e61666fe1268ce560d6127957bc3a82104052fcdd49463426b8f33afead6cf'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://komodoide.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
