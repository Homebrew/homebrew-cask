cask 'leap' do
  version :latest
  sha256 :no_check

  url 'http://www.ironicsoftware.com/downloads/Leap.zip'
  name 'Ironic Software Leap'
  homepage 'http://www.ironicsoftware.com/leap/'
  license :commercial

  app 'Leap.app'
end
