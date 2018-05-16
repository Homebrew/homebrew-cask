cask 'royal-tsx' do
  version '3.2.9.1000'
  sha256 'c30ebcc9db5d0ab73a6298691354665afc6c9dee074773e5a3888b909ba1b139'

  # https://royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '20ef2ad41a493017a90dc3fe9459effd2e8a4e1bcc01148bca1da476b6dcecbc'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
