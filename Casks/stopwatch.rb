cask 'stopwatch' do
  version '1.0'
  sha256 '2100edf6e14ec9ddcd1567c5c9bd5f5c9842fe82b195852cb28e46ec222457d4'

  url 'https://github.com/mimikgit/access-pc/releases/download/1.2.8/StopWatch.dmg'
  appcast 'https://github.com/mimikgit/access-pc/releases.atom'
  name 'StopWatch'
  homepage 'https://github.com/mimikgit/'

  app 'StopWatch.app'
end
