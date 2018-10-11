cask 'brook' do
  version '20180909'
  sha256 '116bc51aa8b85e767d360f58b6d9d26074ee1019183166d795a545fdcaece05e'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  app 'Brook.app'
end
