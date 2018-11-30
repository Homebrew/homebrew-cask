cask 'sblack' do
  version :latest
  sha256 :no_check

  # boxyteam-static.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://boxyteam-static.s3.amazonaws.com/release/Sblack.dmg'
  name 'Sblack'
  homepage 'https://www.sblack.online/'

  app 'Sblack.app'

  uninstall pkgutil: 'co.boxyapp.slack'
end
