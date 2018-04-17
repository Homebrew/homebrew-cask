cask 'pyfa' do
  version '1.36.0,yc120.3-1.8'
  sha256 '68566ce1132f3901300f938dce5eda9b5e3a0bdc16a11e820f038c6d06f39554'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '903134392159db4b7b0922a6b9e9d40318c6ae4d4566365f78ac196e54acdef6'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
