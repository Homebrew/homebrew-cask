cask 'brook' do
  version '20200701'
  sha256 'c0ac6c71eeb596108fe9abc384365bdb685c6e8dc47302aa5fa0558bf8a7a46d'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  app 'Brook.app'
end
