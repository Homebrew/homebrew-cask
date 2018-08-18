cask 'razorsql' do
  version '8.0.5'
  sha256 '2eff3410d80132967e5bde9a9dfc8ed8307bd1ec2e15e4311fb584cacc3e97ee'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
