cask 'pyfa' do
  version '1.33.1,lifeblood-1.0'
  sha256 '78a08e42220d9493042e964a71d24d05742864614bc57a2fc62b916280057571'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '974a3b8ef7df6131b4f205180589172694d03f3f7f8d79b8d099bee2fc1f5875'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
