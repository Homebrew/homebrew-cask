cask 'pyfa' do
  version '2.5.1,yc120.10-1.0'
  sha256 '70c1b126b9a393fc026c9d537414966910eace7213b9c27d2971344598659174'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
