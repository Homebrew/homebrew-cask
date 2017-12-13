cask 'omnigraffle' do
  version '7.5'
  sha256 'd8d8963a85ee34270d7d0148aaaa7aee75bc7d3fffc1bb89e64626546c943d34'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniGraffle-#{version}.dmg"
  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  depends_on macos: '>= :el_capitan'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
