cask 'boxy-suite' do
  version :latest
  sha256 :no_check

  # boxyteam-static.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://boxyteam-static.s3.amazonaws.com/release/Boxy%20Suite.dmg'
  name 'Boxy Suite'
  homepage 'https://www.boxysuite.com/'

  app 'Boxy Dashboard.app'
  app 'Boxy for Gmail.app'
  app 'Boxy for Calendar.app'
end
