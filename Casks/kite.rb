cask 'kite' do
  version '0.20180524.0'
  sha256 '3473b6172316f919e1a4fe1d890265e55263bbe41235e2ab47cc84615c906740'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'c32c3bd01407fe64f3ae30f9236f1688151aa25c02ad5a08857347fa8fdc1bfd'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
