cask :v1 => 'flowdock' do
  version :latest
  sha256 :no_check

  url 'https://flowdock-resources.s3.amazonaws.com/mac/Flowdock.zip'
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml'
  homepage 'https://www.flowdock.com/'
  license :unknown

  app 'Flowdock.app'
end
