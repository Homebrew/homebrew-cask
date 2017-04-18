cask 'Ironic-Leap' do
  version :latest
  sha256 :no_check

  url 'http://www.ironicsoftware.com/downloads/Leap.zip'
  name 'Leap'
  homepage 'http://www.ironicsoftware.com/leap/'
  license :commercial

  app 'Leap.app'
end
