cask 'poolside-fm' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-eu-west-1.amazonaws.com/poolside-fm/HeyThereHotStuff.zip'
  name 'Poolside FM'
  homepage 'http://poolside.fm/mac/'
  license :gratis

  app 'Poolside FM.app'
end
