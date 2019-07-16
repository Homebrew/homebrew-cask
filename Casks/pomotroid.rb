cask 'pomotroid' do
  version '0.6.1'
  sha256 'b1d7636f8287b33eacf83444a9e081dd0427f042b68107e58e2f13e0f24ec3d8'

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/Pomotroid-setup-#{version}.dmg"
  appcast 'https://github.com/Splode/pomotroid/releases.atom'
  name 'Pomotroid'
  homepage 'https://github.com/Splode/pomotroid'

  app 'Pomotroid.app'
end
