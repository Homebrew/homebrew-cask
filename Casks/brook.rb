cask 'brook' do
  version '20180601'
  sha256 '418ed03948df31c6b4d159690e3fe53040ce2b1b302ec482a3def654f86cb511'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast 'https://github.com/txthinking/brook/releases.atom',
          checkpoint: '8ae3ef839fec9d5416139ac26a9796694cccbc334f9ecc8dde4919a3074bc547'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  app 'Brook.app'
end
