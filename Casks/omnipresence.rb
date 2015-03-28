cask :v1 => 'omnipresence' do
  version '1.3'
  sha256 '2a58504aef5f7f24c74fb79ab1b59b667d83f3ba8b75b161a62de8617c089128'

  url "http://downloads.omnigroup.com/software/MacOSX/10.10/OmniPresence-#{version}.dmg"
  name 'OmniPresence'
  homepage 'http://www.omnigroup.com/omnipresence'
  license :commercial

  app 'OmniPresence.app'
end
