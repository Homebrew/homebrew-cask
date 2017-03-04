cask 'komodo-ide' do
  version '10.1.4-89515'
  sha256 '77866f74d34f76dc9328441fbeac1575d2df6cf57458fba421f899a628581122'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'

  app "Komodo IDE #{version.major}.app"
end
