cask 'sqlectron' do
  version '1.1.1'
  sha256 '9f604513342e4ce3f4bfedeca58f9d9d7b86f36640a0f2e603ae741b7cd6e1bc'

  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-darwin-x64.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'
  license :mit
  tags :vendor => 'Sqlectron'

  depends_on :macos => '>= :mountain_lion'

  container :nested => 'osx/Sqlectron.dmg'
  app 'Sqlectron.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
    '~/.sqlectron.json',
    '~/Library/Application Support/Sqlectron'
  ]
end
