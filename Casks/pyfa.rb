cask 'pyfa' do
  version '1.35.0,yc120.2-1.1'
  sha256 '0ebd34fa6d74c85470b9669d4b0caa6a08b9bdc134270b812e132747dce32379'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '698aa80a9b224094e5ecb71d332e547308789d9bd3fcb7f7d20e0a9e68e1720b'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
