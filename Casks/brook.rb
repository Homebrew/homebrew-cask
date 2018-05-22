cask 'brook' do
  version '20180601'
  sha256 '418ed03948df31c6b4d159690e3fe53040ce2b1b302ec482a3def654f86cb511'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          checkpoint: '1b3e4ff1820c5d0c0d06e1950efd661fabc84c5aba1db9b661b7fd05ac0a0889'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  app 'Brook.app'
end
