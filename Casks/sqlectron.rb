cask 'sqlectron' do
  version '1.23.0'
  sha256 '59f3f625fa1e77932fe956e94449c4cf3511d3e4996760751c30c58133b3d7b0'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'c6dc289154bb784d87668cad232ec079a806ef52885337619b27714edcf72958'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap trash: [
               '~/.sqlectron.json',
               '~/Library/Application Support/Sqlectron',
             ]
end
