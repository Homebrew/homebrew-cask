cask 'pyfa' do
  version '1.24.0,yc.118.8-1.4'
  sha256 'c2d83aeac52508d3d6993280cc457c29170f856a034044987df090e6ccbcec4e'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '653940a68f7436506cba226e764094e783d5b9fdc6356678fe1b0b68c9898047'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
