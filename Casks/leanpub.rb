cask 'leanpub' do
  version :latest
  sha256 :no_check

  # leanpub-desktop-versions.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://leanpub-desktop-versions.s3.amazonaws.com/Leanpub.dmg'
  name 'Leanpub'
  homepage 'https://leanpub.com/apps'

  app 'Leanpub.app'
end
