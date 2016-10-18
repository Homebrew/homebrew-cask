cask 'jive-chime' do
  version :latest
  sha256 :no_check

  # s3-us-west-2.amazonaws.com/chime-desktop was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/chime-desktop/prod/osx/Jive%20Chime.dmg'
  name 'Jive Chime'
  homepage 'https://jivechime.com/'

  app 'Jive Chime.app'
end
