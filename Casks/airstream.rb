cask 'airstream' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-2.amazonaws.com/airstream-clients/mac/airstream-mac.dmg'
  name 'AirStream'
  homepage 'http://airstream.io/download/'
  license :gratis

  app 'AirStream.app'

  caveats do
    depends_on_java('6')
  end
end
