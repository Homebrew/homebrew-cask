cask 'pyzo' do
  version '4.1'
  sha256 '8acab54d6cad4e072056073e9a0de5b178bf1e9e3c21bae650c458f878510d1e'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom',
          checkpoint: 'e39c7313422d52528d6f9e1171d5b94da9f93153df1c9e1f2efbf0d5e8b81af7'
  name 'Pyzo'
  homepage 'http://www.pyzo.org/'
  license :bsd

  app 'pyzo.app'

  zap delete: '~/Library/Application Support/pyzo'
end
