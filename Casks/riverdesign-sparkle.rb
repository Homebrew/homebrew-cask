cask 'riverdesign-sparkle' do
  version :latest
  sha256 :no_check

  # sparklesoftware.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://sparklesoftware.s3.amazonaws.com/store/Sparkle.zip'
  name 'Sparkle'
  homepage 'https://sparkleapp.com/'

  auto_updates true

  app 'Sparkle.app'
end
