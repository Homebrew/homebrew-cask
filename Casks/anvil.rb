cask 'anvil' do
  version '2016-02-24_11-50-56'
  sha256 'a4ddaa21b8c5b52b2a21620253aba64546f565e944b76e43c052c7a022007749'

  # amazonaws.com/sparkler_versions was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sparkler_versions/versions/uploads/000/000/129/original/Anvil_#{version}.zip"
  appcast 'https://sparkler.herokuapp.com/apps/3/updates.xml',
          checkpoint: '49b49d5f4279c590477d7393207d26a2ca2c908527e12b0fd150a68790590b90'
  name 'Anvil'
  homepage 'https://anvilformac.com/'

  app "Anvil #{version.sub('_', ' ')}/Anvil.app"
end
