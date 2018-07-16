cask 'pyfa' do
  version '2.3.0,yc120.7-1.2'
  sha256 '76a27baac54f3d77381a5c659f8ac9f42b32f363f8aaf45e331c965740b0c8b5'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
