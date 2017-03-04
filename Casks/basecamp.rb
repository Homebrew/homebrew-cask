cask 'basecamp' do
  version :latest
  sha256 :no_check

  # bc3-desktop.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://bc3-desktop.s3.amazonaws.com/mac/basecamp3.dmg'
  name 'Basecamp 3'
  homepage 'https://basecamp.com/help/3/guides/apps/mac'

  auto_updates true

  app 'Basecamp 3.app'
end
