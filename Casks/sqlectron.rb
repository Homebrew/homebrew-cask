cask 'sqlectron' do
  version '1.17.0'
  sha256 '09792d9ed39e6595b02f0741bb2c18e2ae6f36bad8ab78e170c3b55aec6c843a'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: 'c7565ade7540397ee5bfdbfab8d75de14f3c8a15b9001eac4c7aae1bc031ca56'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

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
