cask 'codekit' do
  version '2.6.1-19102'
  sha256 'a655aa723a9bb762a187ce14c5a70648cf62801cd264e1168b9649287910296b'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          :sha256 => '81d8e49c215b73d9c222924aca367b69f894e6c11968dffcfbf3ae20efc4ca11'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  app 'CodeKit.app'
end
