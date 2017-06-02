cask 'anvil' do
  version '2016-02-24_11-50-56'
  sha256 'a4ddaa21b8c5b52b2a21620253aba64546f565e944b76e43c052c7a022007749'

  # amazonaws.com/sparkler_versions was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sparkler_versions/versions/uploads/000/000/129/original/Anvil_#{version}.zip"
  appcast 'https://sparkler.herokuapp.com/apps/3/updates.xml',
          checkpoint: 'f0f573475cd91a1154878775ee459b5ecc3d6164adedaa589fc9d4ac02f18e23'
  name 'Anvil'
  homepage 'https://anvilformac.com/'

  app "Anvil #{version.sub('_', ' ')}/Anvil.app"
end
