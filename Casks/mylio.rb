cask 'mylio' do
  version :latest
  sha256 :no_check

  # myliodownloads.s3-website-us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url 'http://myliodownloads.s3-website-us-east-1.amazonaws.com/mylio.dmg'
  name 'Mylio'
  homepage 'http://mylio.com/'

  app 'Mylio.app'
end
