cask 'pyfa' do
  version '1.35.1,yc120.2-1.2'
  sha256 '52648b7d35f56953a198f3cb495bde4651e61c86546b7bd448f5316ea3a1bc22'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '6df0e91d93781a9dd0f6d1a3631ce002798f6bc5fb02eaf31d6325590b8a76b7'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
