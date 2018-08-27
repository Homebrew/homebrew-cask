cask 'omnigraffle' do
  version '7.8.1'
  sha256 'a06b63d69ecb38b1e73e919192350c8439be0724efccaf24e82c00c1d9263560'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniGraffle-#{version}.dmg"
  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  depends_on macos: '>= :sierra'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
