cask 'poolside-fm' do
  version :latest
  sha256 :no_check

  # amazonaws.com/poolside-fm was verified as official when first introduced to the cask
  url 'https://s3-eu-west-1.amazonaws.com/poolside-fm/HeyThereHotStuff.zip'
  name 'Poolside FM'
  homepage 'http://poolside.fm/mac/'

  app 'Poolside FM.app'
end
