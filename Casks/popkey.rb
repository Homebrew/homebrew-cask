cask 'popkey' do
  version :latest
  sha256 :no_check

  # popkey-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://popkey-downloads.s3.amazonaws.com/releases/darwin/PopKeySetup.dmg'
  name 'PopKey'
  homepage 'https://popkey.co/send-gifs?ref=header_app_nav_section'

  app 'PopKey.app'
end
