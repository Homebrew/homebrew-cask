cask 'komodo-ide' do
  version '10.2.2-89895'
  sha256 '21a103a8c30a87bd5e69d1f37af410cd1fe5e27f4d5f7f73a53cf16c2c959fe0'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'

  app "Komodo IDE #{version.major}.app"
end
