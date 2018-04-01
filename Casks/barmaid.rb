cask 'barmaid' do
  version '0.1-beta'
  sha256 'c0dc73a2ce71a5e6266c792c03aa496ed3b345471e48fd52218db7415394ba27'

  url "https://github.com/zenonas/barmaid/releases/download/v#{version}/Barmaid-v#{version.no_hyphens}.dmg"
  appcast 'https://github.com/zenonas/barmaid/releases.atom',
          checkpoint: '38fd5a240b1f68fbcfac7eb5db7bb3d5454abfb79e4e86e40bda82c5056e0a66'
  name 'Barmaid'
  homepage 'https://github.com/zenonas/barmaid'

  depends_on macos: '>= :mavericks'

  app 'Barmaid.app'
end
