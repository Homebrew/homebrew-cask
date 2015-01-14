cask :v1 => 'flowdock' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://flowdock-resources.s3.amazonaws.com/mac/Flowdock.zip'
  appcast 'https://s3.amazonaws.com/flowdock-resources/mac/appcast.xml'
  homepage 'https://www.flowdock.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Flowdock.app'
end
