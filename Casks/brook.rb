cask 'brook' do
  version '20190601'
  sha256 '221c3e4fc2a0505fc76638b76d94fe2535b8f3d84b7640dc4fafad56523156f4'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  app 'Brook.app'
end
