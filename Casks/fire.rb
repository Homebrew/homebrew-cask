cask 'fire' do
  version '8.3.93.1987'
  sha256 '5193fbde6175749b2a2328068f9c2456ada0aa5be97f1e10715a26a770e7ba00'

  url "http://trials.remobjects.com/TRIAL/Elements/RemObjects%20Fire%20-%20#{version}.dmg"
  name 'Fire'
  homepage 'http://www.elementscompiler.com/elements/'
  license :commercial

  app 'Fire.app'
end
