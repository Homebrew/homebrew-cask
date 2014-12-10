cask :v1 => 'satellite-eyes' do
  version '1.4.0'
  sha256 '9ef7e0e5e4ab5a341e4b7bfa2528e788caa2ad73d29949a305e1dfab94bb2574'

  url "https://satellite-eyes.s3.amazonaws.com/satellite-eyes-#{version}.zip"
  appcast 'https://satellite-eyes.s3.amazonaws.com/appcast.xml',
          :sha256 => '5853ce38284dd959729ea64a423c359d6f2e383be3f062b38825762dfb97860b'
  homepage 'http://satelliteeyes.tomtaylor.co.uk/'
  license :unknown    # todo: improve this machine-generated value

  app 'Satellite Eyes.app'
end
