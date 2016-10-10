cask 'airstream' do
  version :latest
  sha256 :no_check

  # amazonaws.com/airstream-clients was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/airstream-clients/mac/airstream-mac.dmg'
  name 'AirStream'
  homepage 'http://airstream.io/download/'

  app 'AirStream.app'

  caveats do
    depends_on_java('6')
  end
end
