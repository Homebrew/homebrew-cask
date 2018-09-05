cask 'leap' do
  version '3.8.5'
  sha256 '3a4c6844dfa79c113ea604de45e275c071e7696b61384471586db043e1565698'

  url 'https://www.ironicsoftware.com/downloads/Leap.zip'
  appcast 'https://ironicsoftware.com/downloads/leap.xml'
  name 'Ironic Software Leap'
  homepage 'https://www.ironicsoftware.com/leap/'

  app 'Leap.app'
end
