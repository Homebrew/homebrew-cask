cask 'codekit' do
  version '2.9-19137'
  sha256 'fe5063f82cf657e97cf718743b3513ff2615255c4c4c52a9ab5d9cb80c9956ff'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          checkpoint: '68c472683d62647414d8a607008db38af917110f37afef586e6036fc9d2945ec'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'

  auto_updates true

  app 'CodeKit.app'
end
