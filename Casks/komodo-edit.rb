cask 'komodo-edit' do
  version '10.2.1-17670'
  sha256 'fa911f9c7b1fe398d8ec69eb5207c37c11a09e1981c3efcb96e1c507de42d4c5'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://komodoide.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
