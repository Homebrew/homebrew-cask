cask 'pyfa' do
  version '2.16.1'
  sha256 '49857dc81f2b33516d88218b7231d967aa9da500059b1cf56f1165ffce985526'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
