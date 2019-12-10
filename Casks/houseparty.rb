cask 'houseparty' do
  version :latest
  sha256 :no_check

  # houseparty-mac-builds.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://houseparty-mac-builds.s3.amazonaws.com/Houseparty.dmg'
  name 'Houseparty'
  homepage 'https://houseparty.com/'

  app 'Houseparty.app'
end
