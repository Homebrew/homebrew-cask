cask 'komodo-edit' do
  version '10.0.1-17276'
  sha256 '6ff89c1c0a43b16900889da6d7c6b7988f9aa82d04623bfc15c0b95b6e7fc591'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://komodoide.com/komodo-edit/'
  license :mpl

  app "Komodo Edit #{version.major}.app"
end
