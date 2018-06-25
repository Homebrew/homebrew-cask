cask 'servetome' do
  version '4.0.0156'
  sha256 '4540c0ef25008cb7aa810d192d7246b8b10675ac3df9d311ed9951127dc06b8e'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  appcast 'https://www.zqueue.com/servetome/changehistory.html'
  name 'ServeToMe'
  homepage 'https://www.zqueue.com/servetome/'

  app 'ServeToMe.app'
end
