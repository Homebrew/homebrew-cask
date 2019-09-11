cask 'seadrive' do
  version '1.0.7'
  sha256 '822deefa9821cd6d35474cbd942a0218a29c45814c47d600aafa1d0955d971dd'

  # download.seadrive.org was verified as official when first introduced to the cask
  url "https://download.seadrive.org/seadrive-#{version}.dmg"
  appcast 'https://raw.githubusercontent.com/haiwen/seafile-docs/master/changelog/drive-client-changelog.md'
  name 'Seadrive'
  homepage 'https://www.seafile.com/en/home/'

  app 'Seadrive.app'
end
