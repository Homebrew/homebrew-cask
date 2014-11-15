cask :v1 => 'omnipresence' do
  version '1.1'
  sha256 '4b6304fffdeed85054379bde7b43776957b5061f0bd089f29fe3005ed19ca49f'

  url "http://downloads.omnigroup.com/software/MacOSX/10.8/OmniPresence-#{version}.dmg"
  homepage 'http://www.omnigroup.com/omnipresence'
  license :unknown

  app 'OmniPresence.app'
end
