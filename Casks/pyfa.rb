cask 'pyfa' do
  version '2.9.4'
  sha256 '17a66ad4af414a9c69458532db3f5c2da0f0504bd58da7d8165de04dfc8f6913'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
