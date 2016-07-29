cask 'barmaid' do
  version '0.1-beta'
  sha256 'c0dc73a2ce71a5e6266c792c03aa496ed3b345471e48fd52218db7415394ba27'

  url "https://github.com/zenonas/barmaid/releases/download/v#{version}/Barmaid-v#{version.delete('-')}.dmg"
  appcast 'https://github.com/zenonas/barmaid/releases.atom',
          checkpoint: '3c124e15a4425dca571ca4b1e5600a3196b48a648edfc3d4c083e98d97c9db95'
  name 'Barmaid'
  homepage 'https://github.com/zenonas/barmaid'
  license :mit

  depends_on macos: '>= 10.9'

  app 'Barmaid.app'
end
