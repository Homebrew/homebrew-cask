cask 'editaro' do
  version '1.5.0'
  sha256 'a1999fe9a89f2677ba5943062346b824d96cbad932d0ad42652ef6d7345e16d2'

  # github.com/kkosuge/editaro was verified as official when first introduced to the cask
  url "https://github.com/kkosuge/editaro/releases/download/#{version}/Editaro-#{version}-mac.zip"
  appcast 'https://github.com/kkosuge/editaro/releases.atom'
  name 'Editaro'
  homepage 'https://editaro.com/'

  app 'Editaro.app'

  zap trash: '~/Library/ApplicationSupport/Editaro'
end
