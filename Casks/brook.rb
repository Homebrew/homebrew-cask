cask 'brook' do
  version '20190401'
  sha256 '382aa8e252e95dcef0619f4de63af08484768511e0ae2986929bfb1b3561a5ee'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  app 'Brook.app'
end
