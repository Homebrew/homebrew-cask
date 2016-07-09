cask 'keyboard-maestro' do
  version '7.2'
  sha256 '7baaea43241baff101321f3361a3b136fee5cd983634607e34c4452b93ce0064'

  # stairways.com was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.delete('.')}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Keyboard Maestro.app'
end
