cask :v1 => 'pinegrow-web-designer' do
  version :latest
  sha256 :no_check

  url 'https://pinegrow.s3.amazonaws.com/PinegrowMac.zip'
  homepage 'http://pinegrow.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pinegrow Web Designer.app'
end
