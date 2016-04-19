cask 'sqlectron' do
  version '1.6.2'
  sha256 '1c05a88afe21ffcf2d72dbb955adcc860906d73737b3ac98ef9ceebf54fdbc09'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'fd5ebe379d4efd32a16a1e7f8de8e84ed65640217330e94c6287c67ef7da0fee'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'
  license :mit

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.sqlectron.json',
                '~/Library/Application Support/Sqlectron',
              ]
end
