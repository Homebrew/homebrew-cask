cask 'omnigraffle' do
  version '7.7.1'
  sha256 '0ddf72859b3ded2a251d57ffc1b01cc23fa361c2ccbe2438e807ed6238d4a51d'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniGraffle-#{version}.dmg"
  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  depends_on macos: '>= :sierra'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
