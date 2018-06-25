cask 'brook' do
  version '20180707'
  sha256 'bb5a736063aba9116aedf0f2f5901b5b94425302854feacca8a406c85249daeb'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  app 'Brook.app'
end
