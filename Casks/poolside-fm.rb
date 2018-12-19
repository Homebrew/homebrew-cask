cask 'poolside-fm' do
  version '2017-02-16 15-33-29'
  sha256 'bdb67c9d0a1c5f39d464bc1703738859449753510915163d3ed7239a3c6600eb'

  # s3-eu-west-1.amazonaws.com/poolside-fm was verified as official when first introduced to the cask
  url 'https://s3-eu-west-1.amazonaws.com/poolside-fm/HeyThereHotStuff.zip'
  name 'Poolside FM'
  homepage 'http://poolside.fm/mac/'

  app "Poolside FM #{version}/Poolside FM.app"
end
