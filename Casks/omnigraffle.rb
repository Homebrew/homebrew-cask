cask 'omnigraffle' do
  version '7.7'
  sha256 '6cd50552920f9f4698b8d8368a1915b7f8e6357ec366c2ead3268efdde632349'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniGraffle-#{version}.dmg"
  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  depends_on macos: '>= :sierra'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
