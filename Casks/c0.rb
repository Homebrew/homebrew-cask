cask 'c0' do
  version '0.2.0'
  sha256 '3d6214858a2141af95d44f090f62f8a9cf80d26448855b5b4d864d30c1ce6a6f'

  url "https://github.com/smdls/C0/releases/download/v#{version}/C0-#{version}.dmg"
  appcast 'https://github.com/smdls/C0/releases.atom'
  name 'C0'
  homepage 'https://github.com/smdls/C0'

  app 'C0.app'

  zap trash: [
               '~/Library/Application Scripts/smdls.C0',
               '~/Library/Containers/smdls.C0',
             ]
end
