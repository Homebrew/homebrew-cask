cask :v1 => 'codekit' do
  version '2.6.1-19102'
  sha256 'a655aa723a9bb762a187ce14c5a70648cf62801cd264e1168b9649287910296b'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '7b5e67f45933caa97b67eaf08ded9fc270e8620ba01f56e56b6deacf1524620b'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
