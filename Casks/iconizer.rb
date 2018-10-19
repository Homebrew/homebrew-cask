cask 'iconizer' do
  version '2.6.0'
  sha256 '3a385847f43a2b7fc2edcf4e45e241a635c4488568c318143811032fb29e9396'

  # github.com/raphaelhanneken/iconizer was verified as official when first introduced to the cask
  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg"
  appcast 'https://github.com/raphaelhanneken/iconizer/releases.atom'
  name 'Iconizer'
  homepage 'https://raphaelhanneken.github.io/iconizer/'

  auto_updates true

  app 'Iconizer.app'
end
