cask 'leanpub' do
  version :latest
  sha256 :no_check

  # s3-us-west-2.amazonaws.com/leanpub-desktop-versions was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/leanpub-desktop-versions/Leanpub.dmg'
  name 'Leanpub'
  homepage 'https://leanpub.com/apps'

  app 'Leanpub.app'
end
