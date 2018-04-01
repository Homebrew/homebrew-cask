cask 'komodo-edit' do
  version '11.0.2-18122'
  sha256 '4d7ca24d18df2a1e876b69369a94fde31fbcfb1e21f7318f16fa47737bdefcb5'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://www.activestate.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
