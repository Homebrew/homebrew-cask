cask 'servetome' do
  version '4.0.0156'
  sha256 '4540c0ef25008cb7aa810d192d7246b8b10675ac3df9d311ed9951127dc06b8e'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  appcast 'https://www.zqueue.com/servetome/changehistory.html',
          checkpoint: '3c89abbf1c60da5589be4301100828df0fcc11d90beb384a2e3fdc81b550d74a'
  name 'ServeToMe'
  homepage 'https://www.zqueue.com/servetome/'

  app 'ServeToMe.app'
end
