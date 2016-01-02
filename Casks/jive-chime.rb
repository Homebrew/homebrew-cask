cask 'jive-chime' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-2.amazonaws.com/chime-desktop/prod/osx/Jive%20Chime.dmg'
  name 'Jive Chime'
  homepage 'https://jivechime.com/'
  license :gratis

  app 'Jive Chime.app'
end
