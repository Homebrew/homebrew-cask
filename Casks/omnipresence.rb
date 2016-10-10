cask 'omnipresence' do
  version '1.4.1'
  sha256 '409bf272e7c4dc488f68abadb3e2ef15d4accde10f8ee9babd8b23f522bfe323'

  url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniPresence-#{version}.dmg"
  name 'OmniPresence'
  homepage 'https://www.omnigroup.com/omnipresence'

  depends_on macos: '>= :yosemite'

  app 'OmniPresence.app'
end
