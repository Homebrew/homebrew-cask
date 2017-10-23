cask 'sqlectron' do
  version '1.27.0'
  sha256 '1088bf9d689d5d703f696770a462fd1d9cd05182219fe8b44e27986918d88891'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'ec2abdb82dcecf733e960da80b3e88a3d37af1f070d6bc5ab3ae40609eb771b1'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap trash: [
               '~/.sqlectron.json',
               '~/Library/Application Support/Sqlectron',
             ]
end
