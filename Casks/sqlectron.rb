cask 'sqlectron' do
  version '1.22.0'
  sha256 '8a3194129f98d47dec53930795a234718a93a71c9cacbca2d31f26fcb5c8fd1e'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '31676b3e34e3cb8790210f9652dae2e6c94772030846d43988378f9c443e0f8d'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap trash: [
               '~/.sqlectron.json',
               '~/Library/Application Support/Sqlectron',
             ]
end
