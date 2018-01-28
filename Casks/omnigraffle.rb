cask 'omnigraffle' do
  version '7.6.1'
  sha256 '1faee387bf2243779acdea8ba8b28669764a1807e3159193aa99d2009b56451e'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniGraffle-#{version}.dmg"
  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  depends_on macos: '>= :sierra'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
