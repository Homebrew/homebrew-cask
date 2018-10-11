cask 'servetome' do
  version '4.0.0165'
  sha256 '65bfacbb58d86c95bd05ebdfd81c37242593144046d4c66cdf70b1b97d032251'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  appcast 'https://www.zqueue.com/servetome/changehistory.html'
  name 'ServeToMe'
  homepage 'https://www.zqueue.com/servetome/'

  app 'ServeToMe.app'
end
