cask 'omnipresence' do
  version '1.4'
  sha256 '9a8752fa8e4ee4d82bd435f624635f1157f7c1538b96622af361ef43d95f2e02'

  url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniPresence-#{version}.dmg"
  name 'OmniPresence'
  homepage 'https://www.omnigroup.com/omnipresence'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'OmniPresence.app'
end
