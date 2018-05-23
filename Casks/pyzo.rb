cask 'pyzo' do
  version '4.5.1'
  sha256 'a2fdf72305a9ba7600e1bfa34781c212891eaa23ea08ecd071d1f14dcf0d0a84'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom',
          checkpoint: '975fff49a5a76855abb7a6dad04851dba6d86ebe5f0562a35951178da84e3ecb'
  name 'Pyzo'
  homepage 'http://www.pyzo.org/'

  app 'pyzo.app'

  zap trash: '~/Library/Application Support/pyzo'
end
