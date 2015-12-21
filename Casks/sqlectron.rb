cask 'sqlectron' do
  version '1.2.0'
  sha256 'ba8755941f4a8acf851bf795f44758148e7fe46221a0dde4e8d81774cb07eab7'

  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-darwin-x64.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'
  license :mit
  tags :vendor => 'Sqlectron'

  depends_on :macos => '>= :mountain_lion'

  container :nested => 'Sqlectron.dmg'
  app 'Sqlectron.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
    '~/.sqlectron.json',
    '~/Library/Application Support/Sqlectron'
  ]
end
