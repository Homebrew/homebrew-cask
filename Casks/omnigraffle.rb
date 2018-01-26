cask 'omnigraffle' do
  version '7.6'
  sha256 'db55ebb65e0d5253e2e0f55ceb637698450278de9ae69f4af898aac0b5a66844'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniGraffle-#{version}.dmg"
  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  depends_on macos: '>= :sierra'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
