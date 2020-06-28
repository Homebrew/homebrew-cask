cask 'gdlauncher' do
  version '1.0.8'
  sha256 'ffd7dd2445e72a0cfa34c9cd22d2490808f56942f173cb2153c1c9549c48e1c1'

  # github.com/gorilla-devs/GDLauncher/ was verified as official when first introduced to the cask
  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg"
  appcast 'https://github.com/gorilla-devs/GDLauncher/releases.atom'
  name 'GDLauncher'
  homepage 'https://gdevs.io/'

  app 'GDLauncher.app'
end
