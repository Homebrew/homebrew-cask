cask 'komodo-edit' do
  version '10.2.3-17708'
  sha256 'f491c861ec3ff1712840eaedb27fca331323d304e1b080f6d1acf07d8929647a'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://komodoide.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
