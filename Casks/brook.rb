cask 'brook' do
  version '20181212'
  sha256 '02eab8ae283016be76fea11d90ee4fbba4ed9586fa99964fbe9e01acaee9a25d'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  app 'Brook.app'
end
