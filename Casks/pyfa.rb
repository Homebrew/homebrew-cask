cask 'pyfa' do
  version '1.26.0,yc118.10-1.2'
  sha256 'd5df452ab38ba29ffe1a1bbe1a7316d64f5ce8b8d52c3cac345d870ce4a92b01'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '04ce83834d317aeb2747275feb2470d72dd7e6664fd76e08383059b131eb153e'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
