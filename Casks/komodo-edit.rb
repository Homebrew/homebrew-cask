cask 'komodo-edit' do
  version '10.1.4-17456'
  sha256 'be6f046d0b12a6f5c5aa8badc730de25181d9f473f40f7f49dbd8e46057dc03a'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://komodoide.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
