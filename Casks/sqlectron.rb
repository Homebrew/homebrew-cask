cask 'sqlectron' do
  version '1.24.0'
  sha256 '196b301333a0b23845c5f034af2a189ee96f6c2d8ad28f368970a7ff6115bee9'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'a12e74043c449cd66768ed02b08881304223a138a47bf9cee1732d8dae6151ab'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap trash: [
               '~/.sqlectron.json',
               '~/Library/Application Support/Sqlectron',
             ]
end
