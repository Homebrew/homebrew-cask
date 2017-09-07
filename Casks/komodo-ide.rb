cask 'komodo-ide' do
  version '10.2.3-89902'
  sha256 '7c46e4252d12f6c5083b8bd2869c92f7205c44f3f0d949a1b154738e2144c7a7'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'

  app "Komodo IDE #{version.major}.app"
end
