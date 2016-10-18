cask 'nscope' do
  version '0.6'
  sha256 'bbee7f4acb848617cadf84d164a3f8c58d426528c56e96a4018d16aeac49409d'

  url "http://www.nscope.org/prerelease2015/v#{version.no_dots}/mac/nScope.dmg"
  appcast 'https://github.com/nLabs-nScope/nScope/releases.atom',
          checkpoint: '12f3b54ce7a1fea1f5f2987f3959eba11bf04ad1afbb0338897ae9b77d7c84df'
  name 'nScope'
  homepage 'http://www.nscope.org/'

  app 'nScope.app'
end
