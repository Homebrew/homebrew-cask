cask 'sqlectron' do
  version '1.25.0'
  sha256 'd6a268a7603cd2916cd4ab5411fa9d1ff005dfac334cf6ead46620f89bb3c29a'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '2790b29015d69f11f9ddb0d1071135dfa37d2661c607972182419372c78565b7'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap trash: [
               '~/.sqlectron.json',
               '~/Library/Application Support/Sqlectron',
             ]
end
