cask 'barmaid' do
  version '0.1-beta'
  sha256 'c0dc73a2ce71a5e6266c792c03aa496ed3b345471e48fd52218db7415394ba27'

  url "https://github.com/zenonas/barmaid/releases/download/v#{version}/Barmaid-v#{version.no_hyphens}.dmg"
  appcast 'https://github.com/zenonas/barmaid/releases.atom',
          checkpoint: 'c562d8eba3f6537c2b78dc2d8492b1464ddad324e3b6ffbf18119623dcb5845a'
  name 'Barmaid'
  homepage 'https://github.com/zenonas/barmaid'

  depends_on macos: '>= :mavericks'

  app 'Barmaid.app'
end
